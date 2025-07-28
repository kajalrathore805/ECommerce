class CreateStores < ActiveRecord::Migration[7.2]
  def change
    create_table :stores do |t|
      t.string :name
      t.string :description
      t.references :seller, null: false, foreign_key: true

      t.timestamps
    end
  end
end
