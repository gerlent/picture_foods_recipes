class SugarIngredient < Ingredient
  include Obfuscatable
  obfuscate_id prefix: 'sgr_ingr'
end
