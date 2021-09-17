class Category < ApplicationRecord
  has_many :subcategories
  validates :name, presence: true
  def to_s
    name
  end
end
