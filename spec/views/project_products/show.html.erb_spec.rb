require 'spec_helper'

describe "project_products/show" do
  before(:each) do
    @project_product = assign(:project_product, stub_model(ProjectProduct,
      :project => nil,
      :product => nil,
      :quantity => 1,
      :subtotal => 2
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(//)
    rendered.should match(//)
    rendered.should match(/1/)
    rendered.should match(/2/)
  end
end
