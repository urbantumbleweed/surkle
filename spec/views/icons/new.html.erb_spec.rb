require 'spec_helper'

describe "icons/new" do
  before(:each) do
    assign(:icon, stub_model(Icon,
      :name => "MyString",
      :image => "MyString"
    ).as_new_record)
  end

  it "renders new icon form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", icons_path, "post" do
      assert_select "input#icon_name[name=?]", "icon[name]"
      assert_select "input#icon_image[name=?]", "icon[image]"
    end
  end
end
