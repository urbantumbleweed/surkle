require 'spec_helper'

describe "iconups/edit" do
  before(:each) do
    @iconup = assign(:iconup, stub_model(Iconup,
      :session => "",
      :product => "",
      :icon => "",
      :description => "MyString",
      :notes => "MyText"
    ))
  end

  it "renders the edit iconup form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", iconup_path(@iconup), "post" do
      assert_select "input#iconup_session[name=?]", "iconup[session]"
      assert_select "input#iconup_product[name=?]", "iconup[product]"
      assert_select "input#iconup_icon[name=?]", "iconup[icon]"
      assert_select "input#iconup_description[name=?]", "iconup[description]"
      assert_select "textarea#iconup_notes[name=?]", "iconup[notes]"
    end
  end
end
