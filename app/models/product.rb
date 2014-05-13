class Product < ActiveRecord::Base
	has_and_belongs_to_many :iconups
	#has_many :projects
	#belongs_to :company

end
