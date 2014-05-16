class ProjectProduct < ActiveRecord::Base
  belongs_to :project
  belongs_to :product
end
