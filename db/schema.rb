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

ActiveRecord::Schema.define(:version => 20110209163955) do

  create_table "audios", :force => true do |t|
    t.string "title"
    t.string "genre"
  end

  create_table "book_comments", :force => true do |t|
    t.text     "description"
    t.integer  "book_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "book_comments", ["book_id"], :name => "index_book_comments_on_book_id"

  create_table "books", :force => true do |t|
    t.string "title"
    t.string "author"
  end

  create_table "comments", :force => true do |t|
    t.text     "description"
    t.integer  "media_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "comments", ["media_id"], :name => "index_comments_on_media_id"

  create_table "dictionaries", :force => true do |t|
    t.string "lf"
    t.string "lt"
  end

  create_table "medias", :force => true do |t|
    t.string   "type"
    t.string   "name"
    t.integer  "price"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "novels", :force => true do |t|
    t.string "summary"
  end

  create_table "videos", :force => true do |t|
    t.string "title"
    t.string "genre"
  end

  create_table "view_audios", :id => false, :force => true do |t|
    t.integer  "id"
    t.string   "type"
    t.string   "name"
    t.integer  "price"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "title"
    t.string   "genre"
  end

  create_table "view_books", :id => false, :force => true do |t|
    t.integer  "id"
    t.string   "type"
    t.string   "name"
    t.integer  "price"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "title"
    t.string   "author"
  end

  create_table "view_dictionaries", :id => false, :force => true do |t|
    t.integer  "id"
    t.string   "type"
    t.string   "name"
    t.integer  "price"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "title"
    t.string   "author"
    t.string   "lf"
    t.string   "lt"
  end

  create_table "view_novels", :id => false, :force => true do |t|
    t.integer  "id"
    t.string   "type"
    t.string   "name"
    t.integer  "price"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "title"
    t.string   "author"
    t.string   "summary"
  end

  create_table "view_videos", :id => false, :force => true do |t|
    t.integer  "id"
    t.string   "type"
    t.string   "name"
    t.integer  "price"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "title"
    t.string   "genre"
  end

end
