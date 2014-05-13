class CreateIconups < ActiveRecord::Migration
  def change
    create_table :iconups do |t|
      t.references :session
      t.references :product
      t.references :icon
      t.string :description
      t.text :notes

      t.timestamps
    end
  end
end
