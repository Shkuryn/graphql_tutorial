# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.1].define(version: 2024_02_09_101615) do
  create_table "product_availabilities", force: :cascade do |t|
    t.integer "shop_id", null: false
    t.integer "product_id", null: false
    t.integer "count"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["product_id"], name: "index_product_availabilities_on_product_id"
    t.index ["shop_id"], name: "index_product_availabilities_on_shop_id"
  end

  create_table "products", force: :cascade do |t|
    t.string "color"
    t.text "description"
    t.integer "price"
    t.string "vendor"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "title"
  end

  create_table "shops", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "product_availabilities", "products"
  add_foreign_key "product_availabilities", "shops"
end
