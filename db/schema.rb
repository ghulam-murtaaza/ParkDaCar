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

ActiveRecord::Schema[7.0].define(version: 2022_10_12_173433) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "facilities", force: :cascade do |t|
    t.string "name"
    t.string "address"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "parking_spots", force: :cascade do |t|
    t.string "name"
    t.bigint "facility_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["facility_id"], name: "index_parking_spots_on_facility_id"
  end

  create_table "reservations", force: :cascade do |t|
    t.datetime "check_in"
    t.datetime "check_out"
    t.integer "status", default: 0
    t.bigint "vehicle_id"
    t.bigint "user_id"
    t.bigint "parking_spot_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["parking_spot_id"], name: "index_reservations_on_parking_spot_id"
    t.index ["user_id"], name: "index_reservations_on_user_id"
    t.index ["vehicle_id"], name: "index_reservations_on_vehicle_id"
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

  create_table "vehicle_owners", force: :cascade do |t|
    t.string "name"
    t.string "address"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "vehicles", force: :cascade do |t|
    t.string "vin", null: false
    t.string "model_year"
    t.string "make"
    t.string "model"
    t.string "trim"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "vehicle_owner_id"
    t.index ["vehicle_owner_id"], name: "index_vehicles_on_vehicle_owner_id"
  end

  add_foreign_key "parking_spots", "facilities"
  add_foreign_key "reservations", "parking_spots"
  add_foreign_key "reservations", "users"
  add_foreign_key "reservations", "vehicles"
  add_foreign_key "vehicles", "vehicle_owners"
end
