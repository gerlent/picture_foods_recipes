# https://github.com/peterhellberg/hashids.rb
#
# usage:
# class SomeModel < ActiveRecord::Model
#   include Obfuscatable
#   obfuscate_id prefix: 'sm', min_length: 6, salt: 'asdf'
# end
require 'hashids'

module Obfuscatable
  extend ActiveSupport::Concern

  NUMERIC_MATCHER = /\A[0-9]+\Z/
  PREFIX_MATCHER  = /\A[^_]*_/
  SALT = 'omegaresearch$UzymoTvgH84t^cx841Tz3'.freeze
  MIN_LENGTH = 6

  included do
    @_hash_salt = SALT
    @_min_length = MIN_LENGTH
    @_prefix = nil
  end

  module ClassMethods
    def obfuscate_id(prefix:, min_length: MIN_LENGTH, salt: SALT)
      @_hash_salt = salt
      @_min_length = min_length
      @_prefix = prefix
    end

    def prefix
      @_prefix
    end

    def unhash_id(hash_id)
      return nil unless hash_id

      case hash_id.to_s
      when NUMERIC_MATCHER
        Integer(hash_id)
      else
        # it's a string and contains _
        # remove prefix
        hash = hash_id.gsub(PREFIX_MATCHER, '')
        return Hashids.new(@_hash_salt, @_min_length).decode(hash).first
      end
    rescue Hashids::InputError
      nil
    end

    def find_by_hash(hash_id)
      return nil if hash_id.nil?
      find_by(id: unhash_id(hash_id))
    end

    def find_by_hash!(hash_id)
      find_by_id!(hash_id ? unhash_id(hash_id) : nil)
    end

    def hash_id(db_id)
      return nil if db_id.nil?
      "#{@_prefix}_" + Hashids.new(@_hash_salt, @_min_length).encode(db_id)
    end
  end

  def hash_id
    return nil if id.nil?
    self.class.hash_id(id)
  end
end
