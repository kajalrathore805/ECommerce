class CreateUsers < ActiveRecord::Migration[7.2]
  def change
    create_table :users do |t|
      t.string :role
      t.string :full_name
      t.string :email
      t.string :password
      t.string :address
      t.integer :phone

      t.timestamps
    end
  end
end
