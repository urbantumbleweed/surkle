require 'spec_helper'

describe "project_products/new" do
  before(:each) do
    assign(:project_product, stub_model(ProjectProduct,
      :project => nil,
      :product => nil,
      :quantity => 1,
      :subtotal => 1
    ).as_new_record)
  end

  it "renders new project_product form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", project_products_path, "post" do
      assert_select "input#project_product_project[name=?]", "project_product[project]"
      assert_select "input#project_product_product[name=?]", "project_product[product]"
      assert_select "input#project_product_quantity[name=?]", "project_product[quantity]"
      assert_select "input#project_product_subtotal[name=?]", "project_product[subtotal]"
    end
  end
end
