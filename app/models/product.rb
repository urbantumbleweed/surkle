class Product < ActiveRecord::Base
	has_many :iconups, through: :iconup_products
	has_many :project_products
	has_many :products, through: :project_products
	belongs_to :company
	has_attached_file :photo, styles: { thumb: "100x100>", medium: "300x300>"}, default_url: "/images/product/:style/missing.png"
	validates_attachment_content_type :photo, :content_type => %w(image/jpeg image/jpg image/png application/pdf document/pdf image/gif)
end
