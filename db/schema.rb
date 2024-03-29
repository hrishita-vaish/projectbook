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

ActiveRecord::Schema.define(:version => 20130125100538) do

  create_table "emails", :force => true do |t|
    t.string   "to"
    t.string   "from"
    t.string   "subject"
    t.string   "cc"
    t.string   "bcc"
    t.text     "body"
    t.string   "project_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "projects", :force => true do |t|
    t.string   "project_id"
    t.string   "name"
    t.string   "status"
    t.string   "sponsor"
    t.string   "cc"
    t.string   "coordinator"
    t.string   "backup_coordinator"
    t.date     "created_on"
    t.date     "last_action"
    t.string   "ci_status"
    t.text     "office_address"
    t.string   "url"
    t.string   "pid"
    t.string   "charge_code"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
    t.integer  "seq_id"
  end

end
