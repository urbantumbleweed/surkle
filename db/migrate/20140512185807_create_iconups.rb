class CreateIconups < ActiveRecord::Migration
  def change
    create_table :iconups do |t|
      t.references :surkle
      t.references :product
      t.references :icon
      t.text :description
      t.text :notes
      
      t.timestamps
    end
  end
end
