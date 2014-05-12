require 'spec_helper'

describe "surkles/index" do
  before(:each) do
    assign(:surkles, [
      stub_model(Surkle,
        :floorplan => "MyText",
        :description => "MyText",
        :location => "Location",
        :timestamps => "Timestamps"
      ),
      stub_model(Surkle,
        :floorplan => "MyText",
        :description => "MyText",
        :location => "Location",
        :timestamps => "Timestamps"
      )
    ])
  end

  it "renders a list of surkles" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Location".to_s, :count => 2
    assert_select "tr>td", :text => "Timestamps".to_s, :count => 2
  end
end
