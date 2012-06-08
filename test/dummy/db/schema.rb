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

ActiveRecord::Schema.define(:version => 20120521032513) do

  create_table "tractor_campaigns", :force => true do |t|
    t.string   "title"
    t.string   "campaign_key"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "tractor_newsletter_blocks", :force => true do |t|
    t.string   "block_key"
    t.integer  "newsletter_id"
    t.integer  "sort_order"
    t.integer  "status"
    t.string   "main_title"
    t.string   "secondary_title"
    t.string   "main_link"
    t.string   "anchor_text"
    t.string   "main_image"
    t.text     "body"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  create_table "tractor_newsletters", :force => true do |t|
    t.string   "title"
    t.text     "content"
    t.string   "tracking_code"
    t.string   "subject_line"
    t.integer  "status"
    t.string   "preheader"
    t.integer  "sections"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
    t.integer  "template_id"
  end

  create_table "tractor_send_events", :force => true do |t|
    t.string   "name"
    t.datetime "send_date"
    t.integer  "newsletter_id"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "tractor_templates", :force => true do |t|
    t.string   "title"
    t.integer  "modules"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end
