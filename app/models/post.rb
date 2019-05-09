class Post < ApplicationRecord
  has_many :post_tags
  has_many :tags, through: :post_tags
  has_many :comments
  belongs_to :user
  belongs_to :destination

  validates :content, :title, presence: true
  validates :title, uniqueness: true



end
