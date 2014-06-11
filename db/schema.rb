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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20140523121448) do

  create_table "atms", :force => true do |t|
    t.string   "nama_atm"
    t.string   "lat"
    t.string   "lng"
    t.string   "icon"
    t.string   "picture"
    t.integer  "bank_id"
    t.integer  "lokasi_atm_id"
    t.integer  "kategori_atm_id"
    t.integer  "min_transaksi_id"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
    t.integer  "user_id"
    t.boolean  "is_approved"
  end

  add_index "atms", ["is_approved"], :name => "index_atms_on_is_approved"
  add_index "atms", ["user_id"], :name => "index_atms_on_user_id"

  create_table "banks", :force => true do |t|
    t.string   "nama_bank"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "kategori_atms", :force => true do |t|
    t.string   "nama_kategori"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "lokasi_atms", :force => true do |t|
    t.string   "nama_lokasi"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "min_transaksis", :force => true do |t|
    t.string   "nominal"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "user_roles", :force => true do |t|
    t.string   "role_name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "nama_lengkap"
    t.string   "email"
    t.string   "password_digest"
    t.string   "alamat"
    t.string   "no_tlp"
    t.integer  "user_role_id"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

end
