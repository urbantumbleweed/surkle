require 'spec_helper'

describe "companies/edit" do
  before(:each) do
    @company = assign(:company, stub_model(Company,
      :name => "MyString",
      :location => "MyString",
      :logo_file_name => ""
    ))
  end

  it "renders the edit company form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", company_path(@company), "post" do
      assert_select "input#company_name[name=?]", "company[name]"
      assert_select "input#company_location[name=?]", "company[location]"
      assert_select "input#company_logo_file_name[name=?]", "company[logo_file_name]"
    end
  end
end
