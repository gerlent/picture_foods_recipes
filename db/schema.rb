# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2019_03_16_132300) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "ingredients", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.boolean "is_gram_based"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "type", null: false
    t.integer "calories_per_hundred_gram"
    t.index ["name"], name: "index_ingredients_on_name", unique: true
  end

  create_table "recipe_ingredients", force: :cascade do |t|
    t.integer "amount"
    t.integer "amount_in_grams"
    t.string "ingredient_type"
    t.bigint "ingredient_id"
    t.string "recipe_type"
    t.bigint "recipe_id"
    t.index ["ingredient_type", "ingredient_id"], name: "index_recipe_ingredients_on_ingredient_type_and_ingredient_id"
    t.index ["recipe_type", "recipe_id"], name: "index_recipe_ingredients_on_recipe_type_and_recipe_id"
  end

  create_table "recipes", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "description"
    t.string "type", null: false
    t.integer "portions"
    t.integer "time_to_prepare_in_minutes"
    t.index ["name"], name: "index_recipes_on_name", unique: true
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
