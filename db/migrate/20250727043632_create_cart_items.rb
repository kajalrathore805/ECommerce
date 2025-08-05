class CreateCartItems < ActiveRecord::Migration[7.2]
  def change
    create_table :cart_items do |t|
      t.integer :quantity
      t.references :cart, null: false, foreign_key: true

      t.references :order_item, foreign_key: true

      t.timestamps
    end
  end
end
