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

ActiveRecord::Schema.define(version: 20140610073812) do

  create_table "patterns", force: true do |t|
    t.string   "uuid"
    t.integer  "activities_start_date_top"
    t.integer  "activities_start_date_left"
    t.integer  "activities_start_date_width"
    t.integer  "activities_start_date_height"
    t.integer  "activities_end_date_top"
    t.integer  "activities_end_date_left"
    t.integer  "activities_end_date_width"
    t.integer  "activities_end_date_height"
    t.integer  "coupon_top"
    t.integer  "coupon_left"
    t.integer  "coupon_width"
    t.integer  "coupon_height"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
  end

  create_table "templates", force: true do |t|
    t.string   "uuid"
    t.string   "status"
    t.text     "advertising"
    t.string   "time_location"
    t.integer  "time_font_size"
    t.string   "time_font_family"
    t.datetime "start_time"
    t.datetime "end_time"
    t.string   "discunt_location"
    t.integer  "discunt_font_size"
    t.string   "discunt_font_family"
    t.string   "discunt"
    t.datetime "release_end_time"
    t.datetime "release_start_time"
    t.datetime "time"
    t.integer  "beacon_id"
    t.datetime "send_time"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
