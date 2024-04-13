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

ActiveRecord::Schema[7.1].define(version: 2024_04_13_170011) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "combats", force: :cascade do |t|
    t.bigint "frog_id", null: false
    t.bigint "enemy_id", null: false
    t.integer "round"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["enemy_id"], name: "index_combats_on_enemy_id"
    t.index ["frog_id"], name: "index_combats_on_frog_id"
  end

  create_table "enemies", force: :cascade do |t|
    t.string "name"
    t.integer "level"
    t.integer "health"
    t.integer "stamina"
    t.integer "max_health"
    t.integer "max_stamina"
    t.string "resource_type"
    t.integer "resource_qty"
    t.string "image_url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "frogs", force: :cascade do |t|
    t.string "name"
    t.string "species"
    t.integer "level"
    t.integer "health"
    t.integer "stamina"
    t.integer "max_health"
    t.integer "max_stamina"
    t.string "rarity"
    t.string "image_url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "habits", force: :cascade do |t|
    t.string "name"
    t.integer "frequency"
    t.integer "count"
    t.integer "streak"
    t.boolean "completed"
    t.bigint "frog_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["frog_id"], name: "index_habits_on_frog_id"
  end

  add_foreign_key "combats", "enemies"
  add_foreign_key "combats", "frogs"
  add_foreign_key "habits", "frogs"
end
