class Collection < ActiveRecord::Base
  attr_accessible :book_id, :user_id, :book, :user

  belongs_to :user
  belongs_to :book
  
end
