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

ActiveRecord::Schema[8.0].define(version: 2025_02_20_114209) do
  create_table "books", force: :cascade do |t|
    t.string "title"
    t.string "author"
    t.string "isbn"
    t.date "published_date"
    t.integer "copies_available"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "borrow_records", force: :cascade do |t|
    t.integer "book_id", null: false
    t.integer "user_id", null: false
    t.date "borrowed_on"
    t.date "due_date"
    t.date "returned_on"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["book_id"], name: "index_borrow_records_on_book_id"
    t.index ["user_id"], name: "index_borrow_records_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "membership_number"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "borrow_records", "books"
  add_foreign_key "borrow_records", "users"
end
