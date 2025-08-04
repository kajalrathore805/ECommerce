class AddCartRefToOrderItem < ActiveRecord::Migration[7.2]
  def change
    add_reference :order_items, :cart_item, foreign_key: true
  end
end
