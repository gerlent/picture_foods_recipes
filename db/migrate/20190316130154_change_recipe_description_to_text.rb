class ChangeRecipeDescriptionToText < ActiveRecord::Migration[5.2]
  def change
    remove_column :recipes, :description
    add_column :recipes, :description, :text
  end
end
