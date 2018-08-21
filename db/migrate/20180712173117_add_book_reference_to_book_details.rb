class AddBookReferenceToBookDetails < ActiveRecord::Migration[5.2]
  def change
    add_reference :book_details, :book, index: true
  end
end
