json.extract! book, :id, :isbn, :author, :title, :publication, :edition, :no_of_copies, :volumn, :date_of_pub, :price, :status, :created_at, :updated_at
json.url book_url(book, format: :json)
