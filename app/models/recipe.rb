class Recipe < ActiveRecord::Base
  include Obfuscatable
  obfuscate_id prefix: 'rcp'

  has_many :recipe_ingredients, dependent: :destroy
  has_many :ingredients, through: :recipe_ingredients, source_type: "Ingredient"
end
