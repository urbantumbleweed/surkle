require 'spec_helper'

describe "companies/new" do
  before(:each) do
    assign(:company, stub_model(Company,
      :name => "MyString",
      :location => "MyString",
      :logo_file_name => ""
    ).as_new_record)
  end

  it "renders new company form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", companies_path, "post" do
      assert_select "input#company_name[name=?]", "company[name]"
      assert_select "input#company_location[name=?]", "company[location]"
      assert_select "input#company_logo_file_name[name=?]", "company[logo_file_name]"
    end
  end
end
