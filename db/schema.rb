# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20150630154853) do

  create_table "opening_hours", force: true do |t|
    t.time     "opening_time"
    t.time     "closing_time"
    t.integer  "day"
    t.integer  "supperplace_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "opening_hours", ["supperplace_id"], name: "index_opening_hours_on_supperplace_id"

  create_table "photos", force: true do |t|
    t.string   "name"
    t.string   "url"
    t.integer  "supperplace_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "photos", ["supperplace_id"], name: "index_photos_on_supperplace_id"

  create_table "supperplaces", force: true do |t|
    t.string   "address"
    t.string   "website"
    t.string   "crusine"
    t.integer  "phone"
    t.integer  "state"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.decimal  "latitude"
    t.decimal  "longitude"
  end

end
