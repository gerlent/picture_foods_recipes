class NutIngredient < Ingredient
  include Obfuscatable
  obfuscate_id prefix: 'nut_ingr'
end
