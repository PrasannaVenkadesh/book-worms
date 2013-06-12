# == Schema Information
#
# Table name: books
#
#  id         :integer          not null, primary key
#  title      :string(255)
#  author     :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  image_url  :string(255)
#

class Book < ActiveRecord::Base
  attr_accessible :author, :title, :image_url

  validates :title, presence: true, uniqueness: true
  validates :author, presence: true
  validates :image_url, presence: true, format: {
  	with: %r{\.(gif|jpg|png)$}i,
  	message: 'must be a URL for gif, jpg or png image'
  }

  has_many :collections, dependent: :destroy
end
