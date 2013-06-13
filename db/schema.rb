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

ActiveRecord::Schema.define(:version => 20130613184652) do

  create_table "carts", :force => true do |t|
    t.integer  "item_id"
    t.integer  "checkout_id"
    t.integer  "cart_quantity"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "checkouts", :force => true do |t|
    t.date     "checkout_date"
    t.date     "checkout_verified"
    t.string   "checkout_customer_name"
    t.string   "checkout_customer_mail"
    t.string   "checkout_customer_phone"
    t.text     "checkout_customer_address"
    t.text     "checkout_customer_note"
    t.datetime "created_at",                :null => false
    t.datetime "updated_at",                :null => false
    t.date     "checkout_date_due"
  end

  create_table "items", :force => true do |t|
    t.string   "item_category"
    t.string   "item_name"
    t.text     "item_description"
    t.boolean  "item_available"
    t.datetime "created_at",                      :null => false
    t.datetime "updated_at",                      :null => false
    t.integer  "item_parent_id"
    t.integer  "item_price"
    t.string   "item_code"
    t.integer  "item_order",       :default => 0
    t.integer  "item_quantity",    :default => 0
  end

end
