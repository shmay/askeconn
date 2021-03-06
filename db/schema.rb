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

ActiveRecord::Schema.define(:version => 20081101032919) do

  create_table "answers", :force => true do |t|
    t.integer  "question_id"
    t.text     "body"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id"
    t.text     "view_body"
  end

  create_table "links", :force => true do |t|
    t.string   "body"
    t.integer  "user_id"
    t.integer  "question_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "text"
    t.text     "words"
  end

  create_table "questions", :force => true do |t|
    t.text     "body"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id"
    t.integer  "position"
    t.text     "title"
    t.text     "view_body"
  end

  create_table "users", :force => true do |t|
    t.string   "login"
    t.string   "email"
    t.string   "crypted_password",          :limit => 40
    t.string   "salt",                      :limit => 40
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "remember_token"
    t.datetime "remember_token_expires_at"
    t.text     "profile",                                 :default => ""
    t.date     "birthday"
    t.string   "country"
    t.text     "quote"
    t.string   "image_url"
    t.string   "last_name"
    t.string   "first_name"
    t.string   "middle_initial"
    t.text     "view_profile"
    t.text     "view_quote"
    t.integer  "admin"
  end

end
