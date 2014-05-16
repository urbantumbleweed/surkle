class CreateCompanyProjects < ActiveRecord::Migration
  def change
    create_table :company_projects do |t|

      t.timestamps
    end
  end
end
