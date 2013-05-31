class Book < ActiveRecord::Base
  attr_accessible :author, :title

  validates :title, presence: true, uniqueness: true
  validates :author, presence: true

  has_many :collections, dependent: :destroy
end
