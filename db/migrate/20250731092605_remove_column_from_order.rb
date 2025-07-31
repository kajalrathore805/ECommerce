class RemoveColumnFromOrder < ActiveRecord::Migration[7.2]
  def change
    remove_column :orders, :buyer_id, :integer
  end
end
