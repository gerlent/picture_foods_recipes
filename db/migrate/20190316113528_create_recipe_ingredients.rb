class CreateRecipeIngredients < ActiveRecord::Migration[5.2]
  def change
    create_table :recipe_ingredients do |t|
      t.integer    :amount
      t.integer    :amount_in_grams
      t.references :ingredient, index: true, polymorphic: true
      t.references :recipe, index: true, polymorphic: true
    end
  end
end
