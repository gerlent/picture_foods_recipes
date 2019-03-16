class CreateRecipes < ActiveRecord::Migration[5.2]
  def change
    create_table :recipes do |t|
      t.string   :name, index: true, presence: true
      t.string   :description
      t.integer  :time_to_prepare
      t.timestamps null: false
    end
  end
end
