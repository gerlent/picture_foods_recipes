class AddUniquenessToModels < ActiveRecord::Migration[5.2]
  def change
    remove_index :recipes, :name
    remove_index :ingredients, :name
    add_index :recipes, :name, unique: true
    add_index :ingredients, :name, unique: true
  end
end
