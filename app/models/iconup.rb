class Iconup < ActiveRecord::Base
	has_one :surkle
	has_one :icon
	has_many :iconup_products
	has_many :products, through: :iconup_products
	has_one :project, through: :surkle
end
