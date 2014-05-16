require 'spec_helper'

describe "project_products/index" do
  before(:each) do
    assign(:project_products, [
      stub_model(ProjectProduct,
        :project => nil,
        :product => nil,
        :quantity => 1,
        :subtotal => 2
      ),
      stub_model(ProjectProduct,
        :project => nil,
        :product => nil,
        :quantity => 1,
        :subtotal => 2
      )
    ])
  end

  it "renders a list of project_products" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
  end
end
