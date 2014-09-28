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

ActiveRecord::Schema.define(version: 20140928190325) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "affiliations", force: true do |t|
    t.string   "title"
    t.text     "desctiption"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id"
  end

  create_table "affiliations_properties", id: false, force: true do |t|
    t.integer "affiliation_id"
    t.integer "property_id"
  end

  create_table "affiliations_users", id: false, force: true do |t|
    t.integer "affiliation_id"
    t.integer "user_id"
  end

  create_table "campus", force: true do |t|
    t.string   "name"
    t.string   "address"
    t.float    "latitude"
    t.float    "longitude"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "institution_id"
  end

  create_table "institutions", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "properties", force: true do |t|
    t.string   "title"
    t.text     "desctiption"
    t.decimal  "lat"
    t.decimal  "lng"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id"
    t.integer  "affiliation_id"
    t.float    "latitude"
    t.float    "longitude"
    t.string   "address"
    t.string   "institution_id"
    t.integer  "price"
  end

  create_table "users", force: true do |t|
    t.string   "email",                           null: false
    t.string   "crypted_password",                null: false
    t.string   "salt",                            null: false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "remember_me_token"
    t.datetime "remember_me_token_expires_at"
    t.string   "reset_password_token"
    t.datetime "reset_password_token_expires_at"
    t.datetime "reset_password_email_sent_at"
    t.boolean  "is_asking"
    t.boolean  "is_offering"
    t.boolean  "is_endorsing"
    t.integer  "nid"
    t.string   "first_name"
    t.string   "last_name"
    t.integer  "affiliation_id"
    t.float    "latitude"
    t.float    "longitude"
    t.integer  "campu_id"
    t.integer  "institution_id"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["remember_me_token"], name: "index_users_on_remember_me_token", using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", using: :btree

end
