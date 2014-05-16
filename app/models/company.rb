class Company < ActiveRecord::Base
	has_many :company_projects
	has_many :projects, through: :company_projects
	has_many :products
	has_many :users
end
