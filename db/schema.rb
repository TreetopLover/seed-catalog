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

ActiveRecord::Schema[7.0].define(version: 2023_04_13_022319) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "calendars", force: :cascade do |t|
    t.bigint "garden_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["garden_id"], name: "index_calendars_on_garden_id"
  end

  create_table "catalogs", force: :cascade do |t|
    t.string "seed"
    t.string "source"
    t.datetime "date_recieved"
    t.datetime "expired"
    t.integer "amount"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "events", force: :cascade do |t|
    t.datetime "date"
    t.datetime "time"
    t.string "title"
    t.string "description"
    t.boolean "universal"
    t.bigint "calendar_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["calendar_id"], name: "index_events_on_calendar_id"
  end

  create_table "gardens", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.integer "zone"
    t.integer "zip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_gardens_on_user_id"
  end

  create_table "seeds", force: :cascade do |t|
    t.string "type"
    t.string "name"
    t.string "latin_name"
    t.datetime "start_date"
    t.datetime "transfer_date"
    t.datetime "harvest_date"
    t.boolean "direct_sow", default: false
    t.boolean "start_inside", default: false
    t.boolean "annual", default: false
    t.boolean "perrenial", default: false
    t.boolean "determinate", default: false
    t.boolean "indeterminate", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.string "name"
    t.string "user_name"
    t.boolean "admin", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "calendars", "gardens"
  add_foreign_key "events", "calendars"
  add_foreign_key "gardens", "users"
end
