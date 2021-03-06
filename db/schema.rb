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

ActiveRecord::Schema.define(:version => 20130524030832) do

  create_table "advertisers", :force => true do |t|
    t.string   "email"
    t.string   "password_digest"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  add_index "advertisers", ["email"], :name => "index_advertisers_on_email"

  create_table "plantoes", :force => true do |t|
    t.string   "where"
    t.date     "when"
    t.integer  "how_much"
    t.integer  "how_long"
    t.string   "specialty"
    t.string   "contactName"
    t.string   "contactPhone"
    t.text     "obs"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
    t.integer  "advertiser_id"
  end

  create_table "remunerations", :force => true do |t|
    t.integer  "how_much"
    t.integer  "how_long"
    t.boolean  "night_turn"
    t.string   "specialty"
    t.boolean  "joker"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "provider"
    t.string   "uid"
    t.string   "name"
    t.string   "oauth_token"
    t.datetime "oauth_expires_at"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
    t.string   "phone"
    t.integer  "graduation_year"
  end

end
