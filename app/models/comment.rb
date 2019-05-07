class Comment < ApplicationRecord
  belongs_to :post
  belongs_to :user, through: :post

  validates :content, presence: true
  validates :content, length: {maximum: 200}

end
