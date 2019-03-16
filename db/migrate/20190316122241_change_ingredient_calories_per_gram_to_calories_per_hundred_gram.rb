class ChangeIngredientCaloriesPerGramToCaloriesPerHundredGram < ActiveRecord::Migration[5.2]
  def change
    remove_column :ingredients, :calories_per_gram
    add_column :ingredients, :calories_per_hundred_gram, :integer
  end
end
