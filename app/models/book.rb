class Book < ApplicationRecord
  has_one :book_detail
  belongs_to :library
end
