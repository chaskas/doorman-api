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

ActiveRecord::Schema.define(version: 20170608142631) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "events", force: :cascade do |t|
    t.string   "name"
    t.datetime "starts"
    t.datetime "ends"
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
    t.integer  "total_guests",    default: 0
    t.integer  "total_attendees", default: 0
  end

  create_table "guests", force: :cascade do |t|
    t.integer  "person_id"
    t.integer  "event_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["event_id"], name: "index_guests_on_event_id", using: :btree
    t.index ["person_id"], name: "index_guests_on_person_id", using: :btree
  end

  create_table "people", force: :cascade do |t|
    t.string   "rut"
    t.string   "first_name"
    t.string   "last_name"
    t.integer  "gender"
    t.string   "email"
    t.string   "phone"
    t.integer  "mtype"
    t.datetime "last_seen"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "visits", force: :cascade do |t|
    t.integer  "remaining_guest"
    t.integer  "person_id"
    t.integer  "event_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.index ["event_id"], name: "index_visits_on_event_id", using: :btree
    t.index ["person_id"], name: "index_visits_on_person_id", using: :btree
  end

  add_foreign_key "guests", "events"
  add_foreign_key "guests", "people"
  add_foreign_key "visits", "events"
  add_foreign_key "visits", "people"
end
