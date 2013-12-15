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

ActiveRecord::Schema.define(:version => 20131215024015) do

  create_table "atms", :force => true do |t|
    t.string   "nama_atm"
    t.string   "lat"
    t.string   "lng"
    t.string   "icon"
    t.string   "picture"
    t.integer  "bank_id"
    t.integer  "lokasi_atm_id"
    t.integer  "kategori_atm_id"
    t.integer  "nominal_id"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  create_table "banks", :force => true do |t|
    t.string   "nama_bank"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "kategori_atms", :force => true do |t|
    t.string   "kategori_atm"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "lokasi_atms", :force => true do |t|
    t.string   "nama_lokasi"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "min_transaksis", :force => true do |t|
    t.string   "min_transaksi"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

end
