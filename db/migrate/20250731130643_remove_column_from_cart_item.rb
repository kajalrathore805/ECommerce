class RemoveColumnFromCartItem < ActiveRecord::Migration[7.2]
  def change
    remove_column :cart_items, :order_item_id, :integer
  end
end
