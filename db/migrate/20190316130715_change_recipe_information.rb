class ChangeRecipeInformation < ActiveRecord::Migration[5.2]
  def change
    add_column :recipes, :portions, :integer
    add_column :recipes, :time_to_prepare_in_minutes, :integer
    remove_column :recipes, :time_to_prepare
  end
end
