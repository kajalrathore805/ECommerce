class AddRefToCartItem < ActiveRecord::Migration[7.2]
  def change
    add_reference :cart_items, :order_item,  foreign_key: true
  end
end
