require 'spec_helper'

describe "surkles/new" do
  before(:each) do
    assign(:surkle, stub_model(Surkle,
      :floorplan => "MyText",
      :description => "MyText",
      :location => "MyString",
      :timestamps => "MyString"
    ).as_new_record)
  end

  it "renders new surkle form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", surkles_path, "post" do
      assert_select "textarea#surkle_floorplan[name=?]", "surkle[floorplan]"
      assert_select "textarea#surkle_description[name=?]", "surkle[description]"
      assert_select "input#surkle_location[name=?]", "surkle[location]"
      assert_select "input#surkle_timestamps[name=?]", "surkle[timestamps]"
    end
  end
end
