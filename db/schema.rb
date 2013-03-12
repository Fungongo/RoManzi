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

ActiveRecord::Schema.define(:version => 20130312150727) do

  create_table "comments", :force => true do |t|
    t.integer  "user_id"
    t.integer  "novel_id"
    t.text     "comment"
    t.integer  "valutation"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "novels", :force => true do |t|
    t.string   "title"
    t.string   "author"
    t.string   "editor"
    t.integer  "year"
    t.integer  "num_pages"
    t.string   "cover"
    t.string   "isbn"
    t.text     "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "name"
    t.string   "surname"
    t.string   "nickname"
    t.string   "email"
    t.date     "birth_date"
    t.string   "password"
    t.boolean  "is_admin"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end
