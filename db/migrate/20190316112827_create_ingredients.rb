class CreateIngredients < ActiveRecord::Migration[5.2]
  def change
    create_table :ingredients do |t|
      t.string   :name, index: true, presence: true
      t.string   :description
      t.boolean  :is_gram_based
      t.integer  :calories_per_gram
      t.timestamps null: false
      t.string :type, null: false
    end
  end
end
