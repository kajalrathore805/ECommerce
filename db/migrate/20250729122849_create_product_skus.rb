class CreateProductSkus < ActiveRecord::Migration[7.2]
  def change
    create_table :product_skus do |t|
      t.string :size
      t.string :sku_code
      t.references :product_variation, null: false, foreign_key: true

      t.timestamps
    end
  end
end
