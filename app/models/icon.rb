class Icon < ActiveRecord::Base
	has_many :iconups
	has_many :products, through: :iconups
	has_many :surkles, through: :iconups
end
