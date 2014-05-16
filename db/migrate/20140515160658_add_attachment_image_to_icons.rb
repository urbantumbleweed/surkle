class AddAttachmentImageToIcons < ActiveRecord::Migration
  def self.up
    change_table :icons do |t|
      t.attachment :image
    end
  end

  def self.down
    drop_attached_file :icons, :image
  end
end
