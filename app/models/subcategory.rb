class Subcategory < ApplicationRecord
  belongs_to :category
  def to_s
    name
  end
end
