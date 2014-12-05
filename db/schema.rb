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

ActiveRecord::Schema.define(version: 20141205075008) do

  create_table "apartments", force: true do |t|
    t.string   "apttype"
    t.string   "size"
    t.integer  "price"
    t.date     "startdate"
    t.date     "enddate"
    t.string   "neighborhood"
    t.text     "streetadd"
    t.string   "unit"
    t.string   "city"
    t.string   "state"
    t.integer  "zip"
    t.boolean  "furnished"
    t.boolean  "ac"
    t.boolean  "gym"
    t.boolean  "pool"
    t.boolean  "doorman"
    t.boolean  "elevator"
    t.boolean  "internet"
    t.boolean  "cable"
    t.boolean  "laundryu"
    t.boolean  "laundryb"
    t.text     "headline"
    t.text     "description"
    t.text     "pictureurl"
    t.string   "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "favorites", force: true do |t|
    t.integer  "apartment_id"
    t.integer  "favorited_by_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "neighborhoods", force: true do |t|
    t.string   "neighborhood"
    t.string   "district"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "universities", force: true do |t|
    t.text     "university"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "email"
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "university"
    t.text     "profile_pic"
    t.text     "introduction"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
