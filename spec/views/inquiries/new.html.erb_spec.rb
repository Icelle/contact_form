require 'spec_helper'

describe "inquiries/new" do
  before(:each) do
    assign(:inquiry, stub_model(Inquiry,
      :first_name => "MyString",
      :last_name => "MyString",
      :email => "MyString",
      :subject => "MyString",
      :description => "MyString"
    ).as_new_record)
  end

  it "renders new inquiry form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", inquiries_path, "post" do
      assert_select "input#inquiry_first_name[name=?]", "inquiry[first_name]"
      assert_select "input#inquiry_last_name[name=?]", "inquiry[last_name]"
      assert_select "input#inquiry_email[name=?]", "inquiry[email]"
      assert_select "input#inquiry_subject[name=?]", "inquiry[subject]"
      assert_select "input#inquiry_description[name=?]", "inquiry[description]"
    end
  end
end
