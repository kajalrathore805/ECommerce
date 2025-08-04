class RemoveColFromCartItems < ActiveRecord::Migration[7.2]
  def change
  	remove_column :cart_items, :order_item_id, :integer
  	remove_column :cart_items, :cart_id, :integer

  	add_reference :cart_items, :buyer,  foreign_key: { to_table: :users }
  	add_reference :cart_items , :product, foreign_key: true
  end
end
