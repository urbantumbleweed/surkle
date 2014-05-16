class AddAttachmentViewOfLocationToIconups < ActiveRecord::Migration
  def self.up
    change_table :iconups do |t|
      t.attachment :view_of_location
    end
  end

  def self.down
    drop_attached_file :iconups, :view_of_location
  end
end
