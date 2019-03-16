class User < ApplicationRecord
  include Obfuscatable
  obfuscate_id prefix: 'usr'

  ROLES = %w[admin user].freeze
  ROLE_ADMIN = 'admin'.freeze

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  def admin?
    role == ROLE_ADMIN
  end
end
