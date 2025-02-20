class Book < ApplicationRecord
    has_many :borrow_records
    has_many :users, through: :borrow_records
  
    validates :title, :author, :isbn, :published_date, :copies_available, presence: true
  end
  