class Surkle < ActiveRecord::Base
	has_many :iconups
	belongs_to :project
	has_many :users, through: :surkles_users

	has_attached_file :floorplan, :styles => {:thumb => "100x100>", :medium => "300X300>", :canvas => "960X600>"}, :default_url => "/images/floorplan/:style/missing.png"
	validates_attachment_content_type :floorplan, :content_type => %w(image/jpeg image/jpg image/png application/pdf document/pdf)
end
