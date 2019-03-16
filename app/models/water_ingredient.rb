class WaterIngredient < Ingredient
  include Obfuscatable
  obfuscate_id prefix: 'wtr_ingredient'
end
