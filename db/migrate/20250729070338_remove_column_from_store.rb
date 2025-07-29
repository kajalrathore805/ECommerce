class RemoveColumnFromStore < ActiveRecord::Migration[7.2]
  def change
    remove_column :stores, :seller_id, :integer
  end
end
