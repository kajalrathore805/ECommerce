class Cart < ApplicationRecord
  belongs_to :buyer
  has_many :cart_items
end
