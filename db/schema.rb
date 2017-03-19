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

ActiveRecord::Schema.define(version: 20170319193625) do

  create_table "athlete_stories", force: :cascade do |t|
    t.text     "description"
    t.integer  "page_id"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
    t.index ["page_id"], name: "index_athlete_stories_on_page_id"
  end

  create_table "grams", force: :cascade do |t|
    t.string   "text"
    t.string   "image_url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "url"
  end

  create_table "pages", force: :cascade do |t|
    t.string   "tag_line"
    t.string   "secondary_tag_line"
    t.text     "secondary_description"
    t.datetime "created_at",                              null: false
    t.datetime "updated_at",                              null: false
    t.string   "header_image_file_name"
    t.string   "header_image_content_type"
    t.integer  "header_image_file_size"
    t.datetime "header_image_updated_at"
    t.string   "secondary_image_file_name"
    t.string   "secondary_image_content_type"
    t.integer  "secondary_image_file_size"
    t.datetime "secondary_image_updated_at"
    t.string   "foundation_image_file_name"
    t.string   "foundation_image_content_type"
    t.integer  "foundation_image_file_size"
    t.datetime "foundation_image_updated_at"
    t.string   "secondary_foundation_image_file_name"
    t.string   "secondary_foundation_image_content_type"
    t.integer  "secondary_foundation_image_file_size"
    t.datetime "secondary_foundation_image_updated_at"
  end

  create_table "tweets", force: :cascade do |t|
    t.string   "text"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "url"
  end

end
