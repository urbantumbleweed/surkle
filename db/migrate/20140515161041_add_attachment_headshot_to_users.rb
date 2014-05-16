class AddAttachmentHeadshotToUsers < ActiveRecord::Migration
  def self.up
    change_table :users do |t|
      t.attachment :headshot
    end
  end

  def self.down
    drop_attached_file :users, :headshot
  end
end
