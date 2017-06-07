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

ActiveRecord::Schema.define(version: 20170607054656) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "books", force: :cascade do |t|
    t.string   "isbn"
    t.string   "author"
    t.string   "title"
    t.string   "publication"
    t.string   "edition"
    t.integer  "no_of_copies"
    t.string   "volumn"
    t.date     "date_of_pub"
    t.float    "price"
    t.string   "status"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "issues", force: :cascade do |t|
    t.integer  "student_id"
    t.string   "isbn"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["isbn"], name: "index_issues_on_isbn", using: :btree
    t.index ["student_id"], name: "index_issues_on_student_id", using: :btree
  end

  create_table "student_books", force: :cascade do |t|
    t.integer  "book_id"
    t.integer  "student_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "students", force: :cascade do |t|
    t.integer  "reg_no"
    t.string   "name"
    t.text     "address"
    t.integer  "mobile_no"
    t.text     "course"
    t.string   "gender"
    t.string   "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
