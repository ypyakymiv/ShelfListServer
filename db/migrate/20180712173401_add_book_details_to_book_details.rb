class AddBookDetailsToBookDetails < ActiveRecord::Migration[5.2]
  def change
    change_table :book_details do |t|
      t.column :title, :string
      t.column :author, :string
      t.column :publisher, :string
      t.column :publish_date, :date
    end
  end
end
