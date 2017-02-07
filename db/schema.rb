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

ActiveRecord::Schema.define(:version => 20130325052354) do

  create_table "card_details", :force => true do |t|
    t.string   "card_id"
    t.string   "sender_name"
    t.string   "sender_address"
    t.string   "sender_city"
    t.integer  "sender_pincode"
    t.string   "sender_state"
    t.string   "sender_email"
    t.integer  "sender_phone_no"
    t.string   "receiver_name"
    t.string   "receiver_address"
    t.string   "receiver_city"
    t.integer  "receiver_pincode"
    t.string   "receiver_state"
    t.integer  "receiver_phone_no"
    t.string   "status"
    t.string   "card_type"
    t.float    "rate"
    t.float    "weight"
    t.float    "amount"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
  end

  create_table "rates", :force => true do |t|
    t.float    "ordinary_post"
    t.float    "speed_post"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "sessions", :force => true do |t|
    t.string   "session_id", :null => false
    t.text     "data"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "sessions", ["session_id"], :name => "index_sessions_on_session_id"
  add_index "sessions", ["updated_at"], :name => "index_sessions_on_updated_at"

  create_table "users", :force => true do |t|
    t.string   "name"
    t.string   "email"
    t.string   "password"
    t.string   "address"
    t.string   "city"
    t.integer  "pincode"
    t.string   "state"
    t.integer  "contact_no"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end
