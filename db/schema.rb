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

ActiveRecord::Schema.define(:version => 20110819212548) do

  create_table "administrations", :force => true do |t|
    t.string   "name"
    t.string   "address"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "franchise_id"
  end

  create_table "companies", :force => true do |t|
    t.string   "name"
    t.string   "address"
    t.decimal  "cuit"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "consortia", :force => true do |t|
    t.string   "name"
    t.string   "address"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "administration_id"
  end

  create_table "customers", :force => true do |t|
    t.string   "name"
    t.string   "address"
    t.decimal  "cuit"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "franchises", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "company_id"
  end

  create_table "functional_units", :force => true do |t|
    t.integer  "owner_id"
    t.string   "location"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "consortium_id"
  end

  create_table "owners", :force => true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
