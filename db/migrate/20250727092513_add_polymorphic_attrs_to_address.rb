class AddPolymorphicAttrsToAddress < ActiveRecord::Migration[7.2]
  def change
  	 add_column :addresses , :addressable_type , :string
  	 add_column :addresses , :addressable_id , :integer

  	 remove_column :addresses , :buyer_id , :integer
  	 remove_column :addresses , :seller_id , :integer
  end
end
