require 'spec_helper'

describe "icons/edit" do
  before(:each) do
    @icon = assign(:icon, stub_model(Icon,
      :name => "MyString",
      :image => "MyString"
    ))
  end

  it "renders the edit icon form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", icon_path(@icon), "post" do
      assert_select "input#icon_name[name=?]", "icon[name]"
      assert_select "input#icon_image[name=?]", "icon[image]"
    end
  end
end
