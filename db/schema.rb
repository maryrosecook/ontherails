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

ActiveRecord::Schema.define(:version => 0) do

  create_table "file_uploads", :force => true do |t|
    t.string  "name", :limit => 1000
    t.integer "scrap_id"
  end

  create_table "logs", :force => true do |t|
    t.integer  "user_id"
    t.integer  "item_id"
    t.string   "item_class"
    t.string   "event"
    t.text     "exception_backtrace"
    t.text     "exception_message"
    t.datetime "time"
    t.text     "message"
  end

  create_table "users", :force => true do |t|
    t.string   "username"
    t.string   "email"
    t.string   "crypted_password",          :limit => 40
    t.string   "salt",                      :limit => 40
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "remember_token"
    t.datetime "remember_token_expires_at"
    t.integer  "admin",                                    :default => 0
    t.integer  "fake",                                     :default => 0
  end

end