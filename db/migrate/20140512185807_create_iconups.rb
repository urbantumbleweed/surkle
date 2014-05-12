class CreateIconups < ActiveRecord::Migration
  def change
    create_table :iconups do |t|
      t.reference :session
      t.reference :product
      t.reference :icon
      t.string :description
      t.text :notes

      t.timestamps
    end
  end
end
