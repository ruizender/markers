class Marker < ApplicationRecord
  belongs_to :subcategory
  has_many :types
  def to_s
    name
  end
end
