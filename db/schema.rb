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

ActiveRecord::Schema.define(version: 20150130082050) do

  create_table "retails", force: :cascade do |t|
    t.integer  "user_id",     limit: 4
    t.integer  "customer_id", limit: 4
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  create_table "roles", id: false, force: :cascade do |t|
    t.integer  "user_id",     limit: 4
    t.string   "wholeseller", limit: 255, default: "0"
    t.string   "retailer",    limit: 255, default: "0"
    t.string   "customer",    limit: 255, default: "0"
    t.datetime "created_at",                            null: false
    t.datetime "updated_at",                            null: false
  end

  add_index "roles", ["user_id"], name: "index_roles_on_user_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.string   "emailid",    limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "wholesales", force: :cascade do |t|
    t.integer  "user_id",     limit: 4
    t.integer  "retailer_id", limit: 4
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  add_index "wholesales", ["user_id", "retailer_id"], name: "index_wholesales_on_user_id_and_retailer_id", unique: true, using: :btree

end
