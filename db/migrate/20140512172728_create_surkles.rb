class CreateSurkles < ActiveRecord::Migration
  def change
    create_table :surkles do |t|
      t.text :floorplan
      t.text :description
      t.string :location

      t.timestamps
    end
  end
end
