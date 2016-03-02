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

ActiveRecord::Schema.define(version: 20160302160531) do

  create_table "admins", force: :cascade do |t|
    t.string   "username"
    t.string   "password_digest"
    t.integer  "pin"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "bodies", force: :cascade do |t|
    t.string   "subheader"
    t.text     "paragraph"
    t.integer  "webpage_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "header_images", force: :cascade do |t|
    t.integer  "webpage_id"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
    t.string   "head_img_file_name"
    t.string   "head_img_content_type"
    t.integer  "head_img_file_size"
    t.datetime "head_img_updated_at"
  end

  create_table "headers", force: :cascade do |t|
    t.string   "text"
    t.integer  "webpage_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "image_pages", force: :cascade do |t|
    t.integer  "webpage_id"
    t.integer  "image_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "images", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.string   "img_file_name"
    t.string   "img_content_type"
    t.integer  "img_file_size"
    t.datetime "img_updated_at"
  end

  create_table "posts", force: :cascade do |t|
    t.string   "title"
    t.text     "body"
    t.string   "category"
    t.integer  "admin_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "webpages", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "type"
  end

end
