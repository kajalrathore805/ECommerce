class AddRefToOrderItem < ActiveRecord::Migration[7.2]
  def change
    add_reference :order_items, :product, foreign_key: true
  end
end
