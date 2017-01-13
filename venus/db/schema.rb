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

ActiveRecord::Schema.define(version: 20170113155204) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "clients", force: :cascade do |t|
    t.string   "rut"
    t.string   "nombre"
    t.string   "telefono"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "details", force: :cascade do |t|
    t.integer  "service_id"
    t.integer  "client_id"
    t.date     "fecha"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "details", ["client_id"], name: "index_details_on_client_id", using: :btree
  add_index "details", ["service_id"], name: "index_details_on_service_id", using: :btree

  create_table "products", force: :cascade do |t|
    t.integer  "codigo_producto"
    t.string   "nombre"
    t.integer  "precio"
    t.integer  "stock"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "sales", force: :cascade do |t|
    t.integer  "client_id"
    t.integer  "product_id"
    t.date     "fecha"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "sales", ["client_id"], name: "index_sales_on_client_id", using: :btree
  add_index "sales", ["product_id"], name: "index_sales_on_product_id", using: :btree

  create_table "services", force: :cascade do |t|
    t.integer  "codigo_servicio"
    t.string   "nombre"
    t.integer  "precio"
    t.integer  "stylist_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_index "services", ["stylist_id"], name: "index_services_on_stylist_id", using: :btree

  create_table "stylists", force: :cascade do |t|
    t.string   "nombre_estilista"
    t.string   "telefono"
    t.string   "direccion"
    t.integer  "sueldo_base"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
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
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.integer  "tipo_usuario"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  add_foreign_key "details", "clients"
  add_foreign_key "details", "services"
  add_foreign_key "sales", "clients"
  add_foreign_key "sales", "products"
  add_foreign_key "services", "stylists"
end
