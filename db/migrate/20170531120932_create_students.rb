class CreateStudents < ActiveRecord::Migration[5.0]
  def change
    create_table :students,:id => false do |t|
      t.primary_key :stud_id,:integer
      t.string :name
      t.text :address
      t.integer :mobile_no
      t.text :course
      t.string :gender
      t.string :email

      t.timestamps
    end
  end
end
