class CompanyProject < ActiveRecord::Base
	belong_to :company
	belong_to :project
end
