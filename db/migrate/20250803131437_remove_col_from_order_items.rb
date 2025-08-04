class RemoveColFromOrderItems < ActiveRecord::Migration[7.2]
  def change
    remove_column :order_items, :price, :float
  end
end
