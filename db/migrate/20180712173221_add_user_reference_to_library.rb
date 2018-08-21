class AddUserReferenceToLibrary < ActiveRecord::Migration[5.2]
  def change
    add_reference :libraries, :user, index: true
  end
end
