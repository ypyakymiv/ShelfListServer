class AddLibraryRefToBooks < ActiveRecord::Migration[5.2]
  def change
    add_reference :books, :library, index: true
  end
end
