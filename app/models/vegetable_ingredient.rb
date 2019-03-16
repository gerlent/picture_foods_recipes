class VegetableIngredient < Ingredient
  include Obfuscatable
  obfuscate_id prefix: 'veg_ingr'
end
