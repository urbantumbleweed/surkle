class Project < ActiveRecord::Base
	has_many :surkles
	has_many :company_projects
	has_many :companies, through: :company_projects
	has_many :project_products
	has_many :products, through: :project_products
end
