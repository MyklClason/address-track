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

ActiveRecord::Schema.define(version: 20170206060425) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "addresses", force: :cascade do |t|
    t.string   "address1"
    t.string   "address2"
    t.string   "city"
    t.string   "zip"
    t.string   "country"
    t.float    "latitude"
    t.float    "longitude"
    t.string   "map_url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "alternative_emails", force: :cascade do |t|
    t.integer  "user_id"
    t.string   "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "alternative_emails", ["user_id"], name: "index_alternative_emails_on_user_id", using: :btree

  create_table "families", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "family_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "families", ["user_id"], name: "index_families_on_user_id", using: :btree

  create_table "family_members", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "family_member_id"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  add_index "family_members", ["user_id"], name: "index_family_members_on_user_id", using: :btree

  create_table "friends", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "friend_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "friends", ["user_id"], name: "index_friends_on_user_id", using: :btree

  create_table "names", force: :cascade do |t|
    t.string   "first"
    t.string   "last"
    t.string   "middle"
    t.string   "prefix"
    t.string   "suffix"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
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
    t.integer  "name_id"
    t.integer  "address_id"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  add_foreign_key "alternative_emails", "users"
  add_foreign_key "families", "users"
  add_foreign_key "family_members", "users"
  add_foreign_key "friends", "users"
end
