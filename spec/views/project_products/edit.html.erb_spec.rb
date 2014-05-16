require 'spec_helper'

describe "project_products/edit" do
  before(:each) do
    @project_product = assign(:project_product, stub_model(ProjectProduct,
      :project => nil,
      :product => nil,
      :quantity => 1,
      :subtotal => 1
    ))
  end

  it "renders the edit project_product form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", project_product_path(@project_product), "post" do
      assert_select "input#project_product_project[name=?]", "project_product[project]"
      assert_select "input#project_product_product[name=?]", "project_product[product]"
      assert_select "input#project_product_quantity[name=?]", "project_product[quantity]"
      assert_select "input#project_product_subtotal[name=?]", "project_product[subtotal]"
    end
  end
end
