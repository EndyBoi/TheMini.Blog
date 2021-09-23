class User < ApplicationRecord

  before_save { email.downcase! }
  validates :name, presence: true, length: { minimum: 3, maximum: 42 }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i 
  validates :email, presence: true, length: { minimum:2, maximum:80 }, format: { with: VALID_EMAIL_REGEX }, uniqueness: true

end
