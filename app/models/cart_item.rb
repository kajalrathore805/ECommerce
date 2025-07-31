class CartItem < ApplicationRecord
  belongs_to :cart
  belongs_to :order_item
end
