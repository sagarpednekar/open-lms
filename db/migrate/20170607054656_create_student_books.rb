class CreateStudentBooks < ActiveRecord::Migration[5.0]
  def change
    create_table :student_books do |t|
      t.integer :book_id
      t.integer :student_id
      t.timestamps
    end
  end
end
