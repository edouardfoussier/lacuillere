class Review < ActiveRecord::Base
  belongs_to :restaurant

  validates :content, presence: true
  validates :restaurant_id, presence: true
  validates :rating, inclusion: { in: [0,1,2,3,4,5], allow_nil: false }, numericality: true
end

# A review must have a parent restaurant.
# A review must have a content and a rating. The rating should be a number between 0 and 5.
