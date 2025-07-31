class AddRefBuyerToOrder < ActiveRecord::Migration[7.2]
  def change
    add_reference :orders, :buyer,  foreign_key: { to_table: :users }
  end
end
