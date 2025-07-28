class CreateAddresses < ActiveRecord::Migration[7.2]
  def change
    create_table :addresses do |t|
      t.string :address_line
      t.string :city
      t.string :state
      t.integer :pincode
      t.integer :buyer_id
      t.integer :seller_id
      t.timestamps
    end
  end
end
