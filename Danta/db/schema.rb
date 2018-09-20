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

ActiveRecord::Schema.define(version: 20180920011640) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "classifications", force: :cascade do |t|
    t.string "description"
    t.integer "type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "classifications_inscriptions", id: false, force: :cascade do |t|
    t.bigint "inscription_id", null: false
    t.bigint "classification_id", null: false
    t.index ["inscription_id", "classification_id"], name: "inscriptions_and_classifications"
  end

  create_table "classifications_people", id: false, force: :cascade do |t|
    t.bigint "person_id", null: false
    t.bigint "classification_id", null: false
    t.index ["person_id", "classification_id"], name: "people_and_classifications"
  end

  create_table "controls", force: :cascade do |t|
    t.bigint "inscriptions_id"
    t.date "date"
    t.boolean "assist"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["inscriptions_id"], name: "index_controls_on_inscriptions_id"
  end

  create_table "courses", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.date "initial_date"
    t.date "final_date"
    t.integer "cost"
    t.bigint "locations_id"
    t.bigint "entities_id"
    t.bigint "people_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["entities_id"], name: "index_courses_on_entities_id"
    t.index ["locations_id"], name: "index_courses_on_locations_id"
    t.index ["people_id"], name: "index_courses_on_people_id"
  end

  create_table "entities", force: :cascade do |t|
    t.string "identification"
    t.string "name"
    t.string "address"
    t.string "phone"
    t.string "email"
    t.string "website"
    t.bigint "locations_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["locations_id"], name: "index_entities_on_locations_id"
  end

  create_table "inscriptions", force: :cascade do |t|
    t.bigint "courses_id"
    t.bigint "people_id"
    t.integer "attendant"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["courses_id"], name: "index_inscriptions_on_courses_id"
    t.index ["people_id"], name: "index_inscriptions_on_people_id"
  end

  create_table "inscriptions_people", id: false, force: :cascade do |t|
    t.bigint "person_id", null: false
    t.bigint "inscription_id", null: false
    t.index ["person_id", "inscription_id"], name: "people_and_inscriptions"
  end

  create_table "locations", force: :cascade do |t|
    t.string "zone"
    t.string "neighborhood"
    t.string "municipality"
    t.string "department"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "people", force: :cascade do |t|
    t.string "identification"
    t.string "name"
    t.string "address"
    t.string "phone"
    t.integer "age"
    t.string "curriculum_vitae"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.index ["email"], name: "index_people_on_email", unique: true
    t.index ["reset_password_token"], name: "index_people_on_reset_password_token", unique: true
  end

  create_table "qualifications", force: :cascade do |t|
    t.bigint "inscriptions_id"
    t.bigint "qualifications_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["inscriptions_id"], name: "index_qualifications_on_inscriptions_id"
    t.index ["qualifications_id"], name: "index_qualifications_on_qualifications_id"
  end

  add_foreign_key "controls", "inscriptions", column: "inscriptions_id"
  add_foreign_key "courses", "entities", column: "entities_id"
  add_foreign_key "courses", "locations", column: "locations_id"
  add_foreign_key "courses", "people", column: "people_id"
  add_foreign_key "entities", "locations", column: "locations_id"
  add_foreign_key "inscriptions", "courses", column: "courses_id"
  add_foreign_key "inscriptions", "people", column: "people_id"
  add_foreign_key "qualifications", "inscriptions", column: "inscriptions_id"
  add_foreign_key "qualifications", "qualifications", column: "qualifications_id"
end
