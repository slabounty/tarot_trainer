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

ActiveRecord::Schema[8.1].define(version: 2025_12_09_230532) do
  create_table "card_of_the_days", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.date "date_shown"
    t.integer "tarot_card_id", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id", null: false
    t.index ["tarot_card_id"], name: "index_card_of_the_days_on_tarot_card_id"
    t.index ["user_id"], name: "index_card_of_the_days_on_user_id"
  end

  create_table "reading_cards", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.integer "reading_id", null: false
    t.integer "spread_position_id", null: false
    t.integer "tarot_card_id", null: false
    t.datetime "updated_at", null: false
    t.index ["reading_id", "spread_position_id"], name: "index_reading_cards_on_reading_id_and_spread_position_id", unique: true
    t.index ["reading_id"], name: "index_reading_cards_on_reading_id"
    t.index ["spread_position_id"], name: "index_reading_cards_on_spread_position_id"
    t.index ["tarot_card_id"], name: "index_reading_cards_on_tarot_card_id"
  end

  create_table "readings", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.integer "spread_id", null: false
    t.integer "spread_prompt_id", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id", null: false
    t.text "user_input"
    t.index ["spread_id"], name: "index_readings_on_spread_id"
    t.index ["spread_prompt_id"], name: "index_readings_on_spread_prompt_id"
    t.index ["user_id"], name: "index_readings_on_user_id"
  end

  create_table "spread_positions", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.string "name"
    t.integer "position"
    t.integer "spread_id", null: false
    t.datetime "updated_at", null: false
    t.index ["spread_id", "position"], name: "index_spread_positions_on_spread_id_and_position", unique: true
    t.index ["spread_id"], name: "index_spread_positions_on_spread_id"
  end

  create_table "spread_prompts", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.string "prompt", null: false
    t.integer "spread_id", null: false
    t.datetime "updated_at", null: false
    t.index ["spread_id"], name: "index_spread_prompts_on_spread_id"
  end

  create_table "spreads", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.string "description"
    t.string "name"
    t.datetime "updated_at", null: false
  end

  create_table "tarot_cards", force: :cascade do |t|
    t.string "arcana"
    t.string "card_of_the_day_question"
    t.datetime "created_at", null: false
    t.string "element"
    t.string "image_file"
    t.string "meaning"
    t.string "name"
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.string "email"
    t.string "first_name"
    t.string "last_name"
    t.string "password_digest"
    t.integer "streak_count", default: 0
    t.date "streak_last_date"
    t.datetime "updated_at", null: false
  end

  add_foreign_key "card_of_the_days", "tarot_cards"
  add_foreign_key "card_of_the_days", "users"
  add_foreign_key "reading_cards", "readings"
  add_foreign_key "reading_cards", "spread_positions"
  add_foreign_key "reading_cards", "tarot_cards"
  add_foreign_key "readings", "spread_prompts"
  add_foreign_key "readings", "spreads"
  add_foreign_key "readings", "users"
  add_foreign_key "spread_positions", "spreads"
  add_foreign_key "spread_prompts", "spreads"
end
