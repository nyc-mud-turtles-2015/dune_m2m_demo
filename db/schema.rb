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

ActiveRecord::Schema.define(version: 20151004101408) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "appearances", force: :cascade do |t|
    t.integer  "book_id"
    t.integer  "character_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_index "appearances", ["book_id"], name: "index_appearances_on_book_id", using: :btree
  add_index "appearances", ["character_id"], name: "index_appearances_on_character_id", using: :btree

  create_table "books", force: :cascade do |t|
    t.string   "title",      null: false
    t.string   "author",     null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "books_characters", id: false, force: :cascade do |t|
    t.integer "book_id"
    t.integer "character_id"
  end

  add_index "books_characters", ["book_id"], name: "index_books_characters_on_book_id", using: :btree
  add_index "books_characters", ["character_id"], name: "index_books_characters_on_character_id", using: :btree

  create_table "characters", force: :cascade do |t|
    t.string "name", null: false
  end

  add_foreign_key "appearances", "books"
  add_foreign_key "appearances", "characters"
end
