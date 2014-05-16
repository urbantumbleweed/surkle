class AddColumnXlocationYlocation < ActiveRecord::Migration
  def change
  	add_column :iconups, :x_coordinate, :integer
  	add_column :iconups, :y_coordinate, :integer
  end
end
