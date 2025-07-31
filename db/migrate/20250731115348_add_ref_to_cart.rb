class AddRefToCart < ActiveRecord::Migration[7.2]
  def change
    add_reference :carts, :buyer,  foreign_key: { to_table: :users }
  end
end
