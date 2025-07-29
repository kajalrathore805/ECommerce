class RenameRoleToTypeInUser < ActiveRecord::Migration[7.2]
  def change
  	 rename_column :users, :role, :type
  end
end
