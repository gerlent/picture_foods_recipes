class Ingredient < ActiveRecord::Base
  include Obfuscatable
  obfuscate_id prefix: 'ingr'

  has_many :recipes, through: :recipe_ingredients
  has_many :recipe_ingredients, dependent: :destroy
end
