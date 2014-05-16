class CreateSurkles < ActiveRecord::Migration
  def change
    create_table :surkles do |t|
      t.text :description
      t.string :location

      t.timestamps
    end
  end
end
