class AddColumnToOrderItem < ActiveRecord::Migration[7.2]
  def change
    add_column :order_items, :price, :float

    remove_column  :order_items, :cart_item_id, :integer
 	remove_column  :order_items, :total_amount, :float
  end
end
