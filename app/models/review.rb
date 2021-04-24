class Review < ApplicationRecord
  RATING = [0,1,2,3,4,5]
  belongs_to :restaurant
  validates :rating, :content, presence: true
  validates :rating, inclusion: { in: RATING, allow_nil: false }, numericality: { only_integer: true }
end
