class AddAttachmentViewFromLocationToIconups < ActiveRecord::Migration
  def self.up
    change_table :iconups do |t|
      t.attachment :view_from_location
    end
  end

  def self.down
    drop_attached_file :iconups, :view_from_location
  end
end
