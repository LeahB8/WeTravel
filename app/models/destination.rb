class Destination < ApplicationRecord
  has_many :posts

  validates :location, presence: true
end
