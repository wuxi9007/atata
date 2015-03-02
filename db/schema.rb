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

ActiveRecord::Schema.define(version: 20150302234005) do

  create_table "acc_data", force: true do |t|
    t.string   "android_id"
    t.string   "time_stamp"
    t.decimal  "x",          precision: 14, scale: 12
    t.decimal  "y",          precision: 14, scale: 12
    t.decimal  "z",          precision: 14, scale: 12
    t.string   "notes"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.decimal  "height",     precision: 5,  scale: 2
    t.decimal  "weight",     precision: 5,  scale: 2
  end

  create_table "import", id: false, force: true do |t|
    t.string  "android_id"
    t.string  "time_stamp",                           null: false
    t.decimal "x",          precision: 14, scale: 12
    t.decimal "y",          precision: 14, scale: 12
    t.decimal "z",          precision: 14, scale: 12
    t.string  "note"
  end

end
