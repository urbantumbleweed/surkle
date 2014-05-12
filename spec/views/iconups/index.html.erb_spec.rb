require 'spec_helper'

describe "iconups/index" do
  before(:each) do
    assign(:iconups, [
      stub_model(Iconup,
        :session => "",
        :product => "",
        :icon => "",
        :description => "Description",
        :notes => "MyText"
      ),
      stub_model(Iconup,
        :session => "",
        :product => "",
        :icon => "",
        :description => "Description",
        :notes => "MyText"
      )
    ])
  end

  it "renders a list of iconups" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "Description".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
