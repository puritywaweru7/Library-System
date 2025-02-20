class User < ApplicationRecord
    has_many :borrow_records
    has_many :books, through: :borrow_records
  
    validates :name, :email, :membership_number, presence: true
  end
  