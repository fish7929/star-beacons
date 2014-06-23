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

ActiveRecord::Schema.define(version: 20140621143628) do

  create_table "archives", force: true do |t|
    t.string   "uuid"
    t.string   "start_date_top"
    t.string   "start_date_left"
    t.string   "start_date_width"
    t.string   "start_date_height"
    t.date     "start_date"
    t.string   "end_date_top"
    t.string   "end_date_left"
    t.string   "end_date_width"
    t.string   "end_date_height"
    t.date     "end_date"
    t.string   "coupon_top"
    t.string   "coupon_left"
    t.string   "coupon_width"
    t.string   "coupon_height"
    t.integer  "coupon"
    t.string   "date_font_size"
    t.string   "date_font_color"
    t.string   "coupon_font_size"
    t.string   "coupon_font_color"
    t.date     "release_start_date"
    t.date     "release_end_date"
    t.datetime "send_time"
    t.string   "beacon_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
  end

  create_table "send_queues", force: true do |t|
    t.string   "uuid"
    t.string   "start_date_top"
    t.string   "start_date_left"
    t.string   "start_date_width"
    t.string   "start_date_height"
    t.date     "start_date"
    t.string   "end_date_top"
    t.string   "end_date_left"
    t.string   "end_date_width"
    t.string   "end_date_height"
    t.date     "end_date"
    t.string   "coupon_top"
    t.string   "coupon_left"
    t.string   "coupon_width"
    t.string   "coupon_height"
    t.integer  "coupon"
    t.string   "date_font_size"
    t.string   "date_font_color"
    t.string   "coupon_font_size"
    t.string   "coupon_font_color"
    t.date     "release_start_date"
    t.date     "release_end_date"
    t.datetime "send_time"
    t.string   "beacon_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
    t.string   "msg_title"
    t.string   "msg_summary"
    t.string   "image_url"
  end

  create_table "templates", force: true do |t|
    t.string   "uuid"
    t.string   "start_date_top"
    t.string   "start_date_left"
    t.string   "start_date_width"
    t.string   "start_date_height"
    t.string   "end_date_top"
    t.string   "end_date_left"
    t.string   "end_date_width"
    t.string   "end_date_height"
    t.string   "coupon_top"
    t.string   "coupon_left"
    t.string   "coupon_width"
    t.string   "coupon_height"
    t.string   "date_font_size"
    t.string   "date_font_color"
    t.string   "coupon_font_size"
    t.string   "coupon_font_color"
    t.string   "template_type"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
  end

end
