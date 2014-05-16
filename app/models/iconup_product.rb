class IconupProduct < ActiveRecord::Base
	belongs_to :product
	belongs_to :iconup
end
