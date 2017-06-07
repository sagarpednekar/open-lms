
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
