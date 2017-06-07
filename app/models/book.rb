class Book < ApplicationRecord
    has_many :student_books
    has_many :students,through: :student_books
end
