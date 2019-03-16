class JuiceIngredient < Ingredient
  include Obfuscatable
  obfuscate_id prefix: 'juc_ingr'
end
