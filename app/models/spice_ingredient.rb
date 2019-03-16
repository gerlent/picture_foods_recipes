class SpiceIngredient < Ingredient
  include Obfuscatable
  obfuscate_id prefix: 'spc_ingr'
end
