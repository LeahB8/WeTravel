class Post < ApplicationRecord
  has_many :tags
  has_many :comments
  belongs_to :user
  belongs_to :destination

  validates :content, :title, presence: true
  validates :title, uniqueness: true

end
