require 'spec_helper'

describe "iconups/show" do
  before(:each) do
    @iconup = assign(:iconup, stub_model(Iconup,
      :session => "",
      :product => "",
      :icon => "",
      :description => "Description",
      :notes => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(//)
    rendered.should match(//)
    rendered.should match(//)
    rendered.should match(/Description/)
    rendered.should match(/MyText/)
  end
end
