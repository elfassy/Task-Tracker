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

ActiveRecord::Schema.define(:version => 20130222213557) do

  create_table "admin_verifieds", :force => true do |t|
    t.string   "initials",          :limit => 3
    t.string   "event_name"
    t.string   "event_description"
    t.boolean  "complete",                       :default => true
    t.boolean  "admiN_verify",                   :default => true
    t.datetime "created_at",                                       :null => false
    t.datetime "updated_at",                                       :null => false
    t.string   "name"
    t.string   "comment"
  end

  create_table "admin_views", :force => true do |t|
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "call_logs", :force => true do |t|
    t.date     "date"
    t.integer  "number"
    t.time     "time"
    t.string   "extension"
    t.string   "employee"
    t.string   "state"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "comments", :force => true do |t|
    t.integer  "event_id"
    t.string   "comment"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "comments", ["event_id"], :name => "index_comments_on_event_id"

  create_table "complete_events", :force => true do |t|
    t.string   "initials",          :limit => 3
    t.string   "event_name"
    t.string   "event_description"
    t.boolean  "complete",                       :default => true
    t.datetime "created_at",                                        :null => false
    t.datetime "updated_at",                                        :null => false
    t.boolean  "admin_verify",                   :default => false
    t.string   "name"
    t.string   "comment"
  end

  create_table "events", :force => true do |t|
    t.string   "initials",          :limit => 3
    t.string   "event_name"
    t.string   "event_description"
    t.boolean  "complete",                       :default => false
    t.datetime "created_at",                                        :null => false
    t.datetime "updated_at",                                        :null => false
    t.integer  "priroty",           :limit => 8
    t.string   "name"
    t.date     "deadline"
    t.string   "comment"
    t.integer  "user_id"
  end

  add_index "events", ["user_id"], :name => "index_events_on_user_id"

  create_table "users", :force => true do |t|
    t.string   "name"
    t.string   "hashed_password"
    t.string   "salt"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
    t.string   "email"
  end

end
