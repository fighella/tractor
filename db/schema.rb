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

ActiveRecord::Schema.define(:version => 20121018223808) do

  create_table "sigs_email_templates", :force => true do |t|
    t.string   "title"
    t.string   "template_key"
    t.integer  "status"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "sigs_imports", :force => true do |t|
    t.string   "file"
    t.integer  "status"
    t.integer  "default_template"
    t.integer  "client_id"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
    t.integer  "email_template_id"
  end

  create_table "sigs_staff_members", :force => true do |t|
    t.string   "title"
    t.string   "name"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
    t.string   "primary_title"
    t.string   "secondary_title"
    t.string   "email_address"
    t.string   "location"
    t.string   "primary_phone"
    t.string   "secondary_phone"
    t.string   "mobile_phone"
    t.string   "other_key"
    t.integer  "status"
    t.string   "fax_number"
    t.string   "logo_key"
    t.integer  "email_template_id"
    t.integer  "import_id"
  end

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
    t.integer  "position"
    t.integer  "block_type"
    t.integer  "other_block_id"
  end

  create_table "tractor_newsletter_test_emails", :force => true do |t|
    t.string   "send_to"
    t.integer  "newsletter_id"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
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
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
    t.string   "thumbnail"
    t.string   "asset_path"
    t.string   "client_id"
    t.text     "liquid_markup"
    t.boolean  "is_liquid"
  end

  create_table "users", :force => true do |t|
    t.string   "email",                  :default => "", :null => false
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

end
