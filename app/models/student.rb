class Student < ApplicationRecord
    has_many :student_books
    has_many :books,through: :student_books
end
