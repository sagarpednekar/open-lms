require 'csv'
class Student < ApplicationRecord
    has_many :student_books
    has_many :books,through: :student_books
    def self.import(file)
        CSV.foreach('vendor/csv/student.csv', headers: true) do |row|
            Student.create! row.to_hash
        end
    end    
end
