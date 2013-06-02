# == Schema Information
#
# Table name: collections
#
#  id         :integer          not null, primary key
#  user_id    :integer
#  book_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  status     :boolean
#

class Collection < ActiveRecord::Base
  attr_accessible :book_id, :user_id, :book, :user, :status

  belongs_to :user
  belongs_to :book
  
end
