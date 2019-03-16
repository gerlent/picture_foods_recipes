class RecipeIngredient < ActiveRecord::Base
  include Obfuscatable
  obfuscate_id prefix: 'rcp_ing'

  belongs_to :ingredient, polymorphic: true
  belongs_to :recipe, polymorphic: true
end
