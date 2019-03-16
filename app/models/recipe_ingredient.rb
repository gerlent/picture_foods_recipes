class RecipeIngredient < ActiveRecord::Base
  include Obfuscatable
  obfuscate_id prefix: 'rcp_ing'

  belongs_to :ingredient
  belongs_to :recipe
end
