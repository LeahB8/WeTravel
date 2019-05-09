class Post < ApplicationRecord
  has_many :posttags
  has_many :posts, through: :post_tags
  has_many :comments
  belongs_to :user
  belongs_to :destination

  validates :content, :title, presence: true
  validates :title, uniqueness: true

end
