class Icon < ActiveRecord::Base
	has_many :iconups
	has_many :products, through: :iconups
	has_many :surkles, through: :iconups

	has_attached_file :image, :styles => {:tiny => "25x25>", :small => "50x50>", :thumb => "100x100" }, :default_url => "/images/floorplan/:style/missing.png"
	validates_attachment_content_type :image, :content_type => %w(image/jpeg image/jpg image/png image/gif)
end
