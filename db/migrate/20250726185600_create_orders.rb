class CreateOrders < ActiveRecord::Migration[7.2]
  def change
    create_table :orders do |t|
      t.string :status, default: "pending"
      t.references :buyer, null: false, foreign_key: true

      t.timestamps
    end
  end
end
