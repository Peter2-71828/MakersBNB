# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_02_27_105728) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "availibility", force: :cascade do |t|
    t.datetime "start_date"
    t.datetime "end_date"
    t.bigint "users_id"
    t.bigint "spaces_id"
    t.index ["spaces_id"], name: "index_availibility_on_spaces_id"
    t.index ["users_id"], name: "index_availibility_on_users_id"
  end

  create_table "bookings", force: :cascade do |t|
    t.datetime "start_date"
    t.datetime "end_date"
    t.bigint "users_id"
    t.bigint "spaces_id"
    t.index ["spaces_id"], name: "index_bookings_on_spaces_id"
    t.index ["users_id"], name: "index_bookings_on_users_id"
  end

  create_table "spaces", force: :cascade do |t|
    t.string "name"
    t.integer "price_per_night"
    t.datetime "date"
    t.text "description"
    t.bigint "users_id"
    t.index ["users_id"], name: "index_spaces_on_users_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "password"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "availibility", "spaces", column: "spaces_id"
  add_foreign_key "availibility", "users", column: "users_id"
  add_foreign_key "bookings", "spaces", column: "spaces_id"
  add_foreign_key "bookings", "users", column: "users_id"
  add_foreign_key "spaces", "users", column: "users_id"
end
