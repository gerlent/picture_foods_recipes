class FruitIngredient < Ingredient
  include Obfuscatable
  obfuscate_id prefix: 'frt_ing'
end
