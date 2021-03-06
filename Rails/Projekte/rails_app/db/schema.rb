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

ActiveRecord::Schema.define(version: 20160421170104) do

  create_table "events", force: :cascade do |t|
    t.string   "name"
    t.string   "location"
    t.decimal  "price"
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
    t.datetime "start_at"
    t.text     "description"
    t.string   "image_file"
    t.integer  "capacity",    default: 1
  end

  create_table "likes", force: :cascade do |t|
    t.integer  "event_id"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "likes", ["event_id"], name: "index_likes_on_event_id"
  add_index "likes", ["user_id"], name: "index_likes_on_user_id"

  create_table "registrations", force: :cascade do |t|
    t.string   "how_heard"
    t.integer  "event_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "user_id"
  end

  add_index "registrations", ["event_id"], name: "index_registrations_on_event_id"

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.string   "password_digest"
    t.datetime "created_at",                      null: false
    t.datetime "updated_at",                      null: false
    t.boolean  "admin",           default: false
  end

end
