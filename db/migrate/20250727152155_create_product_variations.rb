class CreateProductVariations < ActiveRecord::Migration[7.2]
  def change
    create_table :product_variations do |t|
      t.string :color
      t.references :product, null: false, foreign_key: true

      t.timestamps
    end
  end
end
