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

ActiveRecord::Schema.define(version: 20160203153354) do

  create_table "assets", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "event_id"
    t.text     "description"
    t.string   "media_name"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "comments", force: :cascade do |t|
    t.integer  "picture_id"
    t.integer  "user_id"
    t.text     "comment_text"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "event_followers", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "event_id"
    t.integer  "follow_status"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "event_users", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "event_id"
    t.integer  "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "events", force: :cascade do |t|
    t.string   "event_name"
    t.string   "event_location"
    t.string   "event_city"
    t.string   "event_state"
    t.text     "event_description"
    t.date     "event_start_date"
    t.date     "event_end_date"
    t.string   "logo"
    t.integer  "event_status"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  create_table "flashes", force: :cascade do |t|
    t.integer  "picture_id"
    t.integer  "user_id"
    t.integer  "flash_status"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "pictures", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "event_id"
    t.text     "description"
    t.string   "picture_file"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "profiles", force: :cascade do |t|
    t.integer  "user_id"
    t.string   "fname"
    t.string   "lname"
    t.text     "bio"
    t.string   "hometown_city"
    t.string   "hometown_state"
    t.string   "current_city"
    t.string   "current_state"
    t.date     "date"
    t.string   "avatar"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "snaps", force: :cascade do |t|
    t.integer  "picture_id"
    t.integer  "user_id"
    t.integer  "snap_status"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "user_followers", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "user_being_followed_id"
    t.integer  "follow_status"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "users", force: :cascade do |t|
    t.integer  "profile_id"
    t.string   "email_contact"
    t.date     "birthday"
    t.string   "password"
    t.string   "avatar"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
