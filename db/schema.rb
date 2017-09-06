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

ActiveRecord::Schema.define(version: 20170901095436) do

  create_table "borrows", force: :cascade do |t|
    t.integer "device_id"
    t.integer "contract_id"
    t.float "working_time"
    t.datetime "time"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "contract_details", force: :cascade do |t|
    t.integer "contract_id"
    t.integer "user_id"
    t.integer "type_detail", default: 0
    t.integer "bonus", default: 0
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "contract_partners", force: :cascade do |t|
    t.integer "contract_id"
    t.integer "partner_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "contracts", force: :cascade do |t|
    t.string "code"
    t.integer "type_contract", default: 0
    t.string "name"
    t.integer "customer_id"
    t.datetime "begin_at"
    t.datetime "end_at"
    t.integer "status", default: 0
    t.integer "price", default: 0
    t.integer "user_id"
    t.integer "package", default: 0
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "customers", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.string "phone"
    t.string "email"
    t.string "address"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "devices", force: :cascade do |t|
    t.string "name"
    t.integer "user_id"
    t.integer "type_device", default: 0
    t.integer "price", default: 0
    t.string "avatar"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "logs", force: :cascade do |t|
    t.integer "user_id"
    t.integer "amount", default: 0
    t.string "content"
    t.string "note"
    t.integer "type_log", default: 0
    t.integer "contract_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "partners", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "description"
    t.string "address"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "timesheets", force: :cascade do |t|
    t.integer "user_id"
    t.integer "contract_id"
    t.datetime "time"
    t.float "working_time", default: 0.0
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.integer "role", default: 1
    t.string "name"
    t.string "avatar"
    t.integer "level"
    t.string "phone"
    t.string "address"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
