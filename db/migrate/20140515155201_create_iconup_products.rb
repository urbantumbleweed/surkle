class CreateIconupProducts < ActiveRecord::Migration
  def change
    create_table :iconup_products do |t|
    	t.references :iconup, :product
      t.timestamps
    end
  end
end
