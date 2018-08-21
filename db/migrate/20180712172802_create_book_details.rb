class CreateBookDetails < ActiveRecord::Migration[5.2]
  def change
    create_table :book_details do |t|

      t.timestamps
    end
  end
end
