class AddColToOrder < ActiveRecord::Migration[7.2]
  def change
  	add_column :orders, :address, :string
  	add_column :orders, :total_price, :string
  end
end
