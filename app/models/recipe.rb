class Recipe < ActiveRecord::Base
  include Obfuscatable
  obfuscate_id prefix: 'rcp'

  has_many :ingredients, through: :recipe_ingrediants
end
