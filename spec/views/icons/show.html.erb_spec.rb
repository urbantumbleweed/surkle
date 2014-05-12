require 'spec_helper'

describe "icons/show" do
  before(:each) do
    @icon = assign(:icon, stub_model(Icon,
      :name => "Name",
      :image => "Image"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/Image/)
  end
end
