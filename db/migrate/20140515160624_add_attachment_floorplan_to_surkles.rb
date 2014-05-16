class AddAttachmentFloorplanToSurkles < ActiveRecord::Migration
  def self.up
    change_table :surkles do |t|
      t.attachment :floorplan
    end
  end

  def self.down
    drop_attached_file :surkles, :floorplan
  end
end
