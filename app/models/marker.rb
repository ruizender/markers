class Marker < ApplicationRecord
  belongs_to :subcategory
  def to_s
    name
  end
end
