class Restaurant < ActiveRecord::Base
  CATEGORIES = %w(chinese italian japanese french belgian)

  has_many :reviews, dependent: :destroy

  validates :category, inclusion: {in: CATEGORIES}
  validates :name, :address, presence: true
end


# A restaurant must have at least a name and an address.
# The restaurant category should belong to a fixed list ["chinese", "italian", "japanese", "french", "belgian"].
# When a restaurant is destroyed, all reviews should be destroyed as well.
