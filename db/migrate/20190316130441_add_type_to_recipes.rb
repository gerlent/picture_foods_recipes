class AddTypeToRecipes < ActiveRecord::Migration[5.2]
  def change
    add_column :recipes, :type, :string, null: false
  end
end
