class FoodItem < ApplicationRecord
  belongs_to :section

  def self.search(search)
    where("name ILIKE ?", "%#{search}%")
  end
end
