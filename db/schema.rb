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

ActiveRecord::Schema.define(version: 20140211235246) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "admins", force: true do |t|
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
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "admins", ["email"], name: "index_admins_on_email", unique: true, using: :btree
  add_index "admins", ["reset_password_token"], name: "index_admins_on_reset_password_token", unique: true, using: :btree

  create_table "companies", force: true do |t|
    t.string   "name"
    t.string   "cnpj"
    t.string   "phone"
    t.string   "address"
    t.string   "number"
    t.string   "cep"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "admin_id"
  end

  add_index "companies", ["admin_id"], name: "index_companies_on_admin_id", using: :btree

  create_table "products", force: true do |t|
    t.string   "code"
    t.string   "name"
    t.string   "cost"
    t.string   "price"
    t.string   "quantity"
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "company_id"
  end

  add_index "products", ["company_id"], name: "index_products_on_company_id", using: :btree

  create_table "products_sales", id: false, force: true do |t|
    t.integer "product_id", null: false
    t.integer "sale_id",    null: false
  end

  add_index "products_sales", ["product_id", "sale_id"], name: "index_products_sales_on_product_id_and_sale_id", using: :btree

  create_table "sales", force: true do |t|
    t.decimal  "total"
    t.decimal  "change"
    t.string   "value_received"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "company_id"
  end

  add_index "sales", ["company_id"], name: "index_sales_on_company_id", using: :btree

end
