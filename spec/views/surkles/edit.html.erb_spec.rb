require 'spec_helper'

describe "surkles/edit" do
  before(:each) do
    @surkle = assign(:surkle, stub_model(Surkle,
      :floorplan => "MyText",
      :description => "MyText",
      :location => "MyString",
      :timestamps => "MyString"
    ))
  end

  it "renders the edit surkle form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", surkle_path(@surkle), "post" do
      assert_select "textarea#surkle_floorplan[name=?]", "surkle[floorplan]"
      assert_select "textarea#surkle_description[name=?]", "surkle[description]"
      assert_select "input#surkle_location[name=?]", "surkle[location]"
      assert_select "input#surkle_timestamps[name=?]", "surkle[timestamps]"
    end
  end
end
