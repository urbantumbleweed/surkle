class Iconup < ActiveRecord::Base
	has_one :surkle
	has_one :icon
	has_many :products
	#has_one :project, through: :surkle
end
