# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of Active Record to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20100731041912) do

  create_table "categories", :force => true do |t|
    t.string   "name",       :null => false
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "companies", :force => true do |t|
    t.string   "name",       :null => false
    t.string   "url",        :null => false
    t.string   "email",      :null => false
    t.integer  "listing_id", :null => false
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "jobs", :force => true do |t|
    t.string   "location",    :null => false
    t.string   "position",    :null => false
    t.string   "perks",       :null => false
    t.string   "description", :null => false
    t.string   "how",         :null => false
    t.integer  "listing_id",  :null => false
    t.string   "category_id", :null => false
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "kinds", :force => true do |t|
    t.string   "name",       :null => false
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "listings", :force => true do |t|
    t.integer  "kind_id"
    t.datetime "start"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", :force => true do |t|
    t.string   "login",                     :limit => 40,                  :null => false
    t.string   "name",                      :limit => 100, :default => "", :null => false
    t.string   "email",                     :limit => 100,                 :null => false
    t.string   "crypted_password",          :limit => 40,                  :null => false
    t.string   "salt",                      :limit => 40,                  :null => false
    t.boolean  "admin",                                                    :null => false
    t.datetime "created_at",                                               :null => false
    t.datetime "updated_at",                                               :null => false
    t.string   "remember_token",            :limit => 40,                  :null => false
    t.datetime "remember_token_expires_at",                                :null => false
  end

  add_index "users", ["login"], :name => "index_users_on_login", :unique => true

end
