class RemoveColumnFromCart < ActiveRecord::Migration[7.2]
  def change
    remove_column :carts, :buyer_id, :integer
  end
end
