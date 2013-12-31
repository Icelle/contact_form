require 'spec_helper'

describe "inquiries/index" do
  before(:each) do
    assign(:inquiries, [
      stub_model(Inquiry,
        :first_name => "First Name",
        :last_name => "Last Name",
        :email => "Email",
        :subject => "Subject",
        :description => "Description"
      ),
      stub_model(Inquiry,
        :first_name => "First Name",
        :last_name => "Last Name",
        :email => "Email",
        :subject => "Subject",
        :description => "Description"
      )
    ])
  end

  it "renders a list of inquiries" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "First Name".to_s, :count => 2
    assert_select "tr>td", :text => "Last Name".to_s, :count => 2
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    assert_select "tr>td", :text => "Subject".to_s, :count => 2
    assert_select "tr>td", :text => "Description".to_s, :count => 2
  end
end
