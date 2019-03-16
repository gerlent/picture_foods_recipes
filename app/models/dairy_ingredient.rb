class DairyIngredient < Ingredient
  include Obfuscatable
  obfuscate_id prefix: 'dry_ing'
end
