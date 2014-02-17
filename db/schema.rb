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

ActiveRecord::Schema.define(version: 20140216131913) do

  create_table "users", force: true do |t|
    t.text     "user_first_name"
    t.text     "user_last_name"
    t.text     "user_username"
    t.string   "user_email"
    t.integer  "user_rollnumber"
    t.text     "user_security_question"
    t.text     "user_security_answer"
    t.string   "user_password_hash"
    t.string   "user_password_salt"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
