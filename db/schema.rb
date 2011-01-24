# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of Active Record to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20110124004253) do

  create_table "firearms", :force => true do |t|
    t.string   "caliber"
    t.integer  "times_fired"
    t.date     "last_clean_date"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "product_informations", :force => true do |t|
    t.string   "brand"
    t.string   "model"
    t.string   "serial_number"
    t.integer  "purchase_info_id"
    t.string   "purchase_info_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "purchase_informations", :force => true do |t|
    t.integer  "price",             :limit => 10, :precision => 10, :scale => 0
    t.string   "vendor"
    t.integer  "purchaseable_id"
    t.string   "purchaseable_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "weapons", :force => true do |t|
    t.string   "weaponizable_type"
    t.integer  "weaponizable_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
