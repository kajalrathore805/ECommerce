class OrderItem < ApplicationRecord
  belongs_to :order
   has_one :cart_item
   belongs_to :product
end
