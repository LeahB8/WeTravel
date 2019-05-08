class User < ApplicationRecord
  has_many :posts
  has_many :comments, through: :posts

  has_secure_password

  validates :username, :email, :password, presence: true
  validates :username, :email, uniqueness: true
  validates :password, length: {in: 6..20}
  validates :bio, length: {maximum: 500}
  validates :username, length: {in: 2..30}


end
