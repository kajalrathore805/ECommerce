class RemoveColFromProducts < ActiveRecord::Migration[7.2]
  def change
    remove_column :products, :sub_category_id, :integer
  end
end
