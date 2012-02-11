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

ActiveRecord::Schema.define(:version => 20120211142030) do

  create_table "categories", :force => true do |t|
    t.string   "name",       :null => false
    t.text     "info"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "categories", ["name"], :name => "index_categories_on_name", :unique => true

  create_table "cats", :force => true do |t|
    t.string   "cat"
    t.text     "note"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "grammars", :force => true do |t|
    t.string   "name",       :null => false
    t.text     "info"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "grammars", ["name"], :name => "index_grammars_on_name", :unique => true

  create_table "grms", :force => true do |t|
    t.string   "grm"
    t.text     "note"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "sources", :force => true do |t|
    t.string   "name",                    :null => false
    t.string   "code",       :limit => 5, :null => false
    t.string   "web"
    t.text     "info"
    t.datetime "created_at",              :null => false
    t.datetime "updated_at",              :null => false
  end

  add_index "sources", ["code"], :name => "index_sources_on_code", :unique => true
  add_index "sources", ["name"], :name => "index_sources_on_name", :unique => true
  add_index "sources", ["web"], :name => "index_sources_on_web", :unique => true

  create_table "vocs", :force => true do |t|
    t.string   "german",      :null => false
    t.string   "wylie",       :null => false
    t.integer  "source_id",   :null => false
    t.integer  "grammar_id",  :null => false
    t.integer  "category_id", :null => false
    t.text     "info"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "voxes", :force => true do |t|
    t.string   "german"
    t.string   "wylie"
    t.string   "grm"
    t.string   "cat"
    t.text     "note"
    t.integer  "temp1"
    t.integer  "length"
    t.string   "src"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end
