class RenameColumnSessionToSurkle < ActiveRecord::Migration
  def change
  	rename_column :iconups, :session_id, :surkle_id
  end
end
