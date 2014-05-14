class ChangeTableIconups < ActiveRecord::Migration
  def change
  	remove_column :iconups, :product_id, :integer
  	create_join_table :iconups, :products
  end
end
