require 'csv'
class Book < ApplicationRecord
    has_many :student_books
    has_many :students,through: :student_books
    def self.import(file)
        CSV.foreach('vendor/csv/book.csv', headers: true) do |row|
            Book.create! row.to_hash
        end
    end    
    
    def self.search(search)
        if search
            where("title LIKE ?","%#{search}%")
        else
            all
        end
    end
end
