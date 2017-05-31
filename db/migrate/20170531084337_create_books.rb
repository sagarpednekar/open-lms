class CreateBooks < ActiveRecord::Migration[5.0]
  def change
    create_table :books, :id => false do |t|
      t.primary_key :isbn,:string
      t.string :author
      t.string :title
      t.string :publication
      t.string :edition
      t.integer :no_of_copies
      t.string :volumn
      t.date :date_of_pub
      t.float :price
      t.string :status

      t.timestamps
    end
  end
end
