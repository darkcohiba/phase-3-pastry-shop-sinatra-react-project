# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2022_04_17_193952) do

  create_table "countries", force: :cascade do |t|
    t.string "flag"
    t.string "name"
    t.string "capital_city"
    t.string "sport"
  end

  create_table "pastries", force: :cascade do |t|
    t.string "photo"
    t.string "name"
    t.string "description"
    t.integer "country_id"
  end

  create_table "recipes", force: :cascade do |t|
    t.integer "pastry_id"
    t.string "name"
    t.string "user_id"
    t.integer "rating"
    t.string "description"
    t.string "prep_time"
    t.string "bake_time"
    t.string "total_time"
    t.string "recipe_ingredients"
    t.string "recipe_instructions"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
  end

end
