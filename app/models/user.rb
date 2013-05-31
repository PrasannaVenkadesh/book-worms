class User < ActiveRecord::Base
  attr_accessible :email, :name, :password, :password_confirmation

  before_save { |user| user.email = email.downcase }
  before_save :create_remember_token
  has_secure_password

  validates :name, presence: true, length: { maximum: 40 }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, uniqueness: true, format: {
  	with: VALID_EMAIL_REGEX
  }
  validates :password, presence: true, length: { minimum: 6 }
  validates :password, presence: true

  has_many :collections

  private
    def create_remember_token
      self.remember_token = SecureRandom.urlsafe_base64
    end
end