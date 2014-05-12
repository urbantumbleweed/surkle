require 'spec_helper'

describe "surkles/show" do
  before(:each) do
    @surkle = assign(:surkle, stub_model(Surkle,
      :floorplan => "MyText",
      :description => "MyText",
      :location => "Location",
      :timestamps => "Timestamps"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/MyText/)
    rendered.should match(/MyText/)
    rendered.should match(/Location/)
    rendered.should match(/Timestamps/)
  end
end
