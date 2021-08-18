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

ActiveRecord::Schema.define(version: 2021_08_18_130523) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "additional_services", force: :cascade do |t|
    t.string "session_audio_price"
    t.boolean "is_enable_discount", default: false
    t.bigint "price_id", null: false
    t.bigint "studio_id", null: false
    t.string "mixing_service_price"
    t.string "other_production_price"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["price_id"], name: "index_additional_services_on_price_id"
    t.index ["studio_id"], name: "index_additional_services_on_studio_id"
  end

  create_table "advance_booking_requests", force: :cascade do |t|
    t.string "request"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "features", force: :cascade do |t|
    t.string "amenities"
    t.string "main_equipment"
    t.bigint "studio_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["studio_id"], name: "index_features_on_studio_id"
  end

  create_table "locations", force: :cascade do |t|
    t.string "address"
    t.string "apartment"
    t.bigint "studio_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["studio_id"], name: "index_locations_on_studio_id"
  end

  create_table "minimum_bookings", force: :cascade do |t|
    t.string "duration"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "prices", force: :cascade do |t|
    t.string "price"
    t.boolean "is_audio_engineer_include", default: false
    t.string "discount_percentage"
    t.bigint "studio_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["studio_id"], name: "index_prices_on_studio_id"
  end

  create_table "selected_studio_types", force: :cascade do |t|
    t.bigint "studio_id", null: false
    t.bigint "studio_type_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["studio_id"], name: "index_selected_studio_types_on_studio_id"
    t.index ["studio_type_id"], name: "index_selected_studio_types_on_studio_type_id"
  end

  create_table "studio_occupacies", force: :cascade do |t|
    t.string "max_occupacy"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "studio_pictures", force: :cascade do |t|
    t.string "photos"
    t.bigint "studio_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["studio_id"], name: "index_studio_pictures_on_studio_id"
  end

  create_table "studio_rules", force: :cascade do |t|
    t.string "rule"
    t.string "cancellation_policy"
    t.bigint "studio_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["studio_id"], name: "index_studio_rules_on_studio_id"
  end

  create_table "studio_types", force: :cascade do |t|
    t.string "type"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "studios", force: :cascade do |t|
    t.string "name"
    t.string "details"
    t.string "studio_hours"
    t.string "past_client"
    t.string "audio_samples"
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "minimum_booking_id"
    t.bigint "studio_occupacies_id"
    t.bigint "advance_booking_request_id"
    t.index ["advance_booking_request_id"], name: "index_studios_on_advance_booking_request_id"
    t.index ["minimum_booking_id"], name: "index_studios_on_minimum_booking_id"
    t.index ["studio_occupacies_id"], name: "index_studios_on_studio_occupacies_id"
    t.index ["user_id"], name: "index_studios_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email"
    t.string "first_name"
    t.string "last_name"
    t.string "password_digest"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "profile_picture"
    t.string "bio"
    t.string "website_url"
    t.string "facebook_url"
    t.string "twitter_handle"
    t.string "instagram_handle"
    t.string "streaming_url"
  end

  add_foreign_key "additional_services", "prices"
  add_foreign_key "additional_services", "studios"
  add_foreign_key "features", "studios"
  add_foreign_key "locations", "studios"
  add_foreign_key "prices", "studios"
  add_foreign_key "selected_studio_types", "studio_types"
  add_foreign_key "selected_studio_types", "studios"
  add_foreign_key "studio_pictures", "studios"
  add_foreign_key "studio_rules", "studios"
  add_foreign_key "studios", "users"
end
