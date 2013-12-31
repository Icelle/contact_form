require 'spec_helper'

describe "inquiries/show" do
  before(:each) do
    @inquiry = assign(:inquiry, stub_model(Inquiry,
      :first_name => "First Name",
      :last_name => "Last Name",
      :email => "Email",
      :subject => "Subject",
      :description => "Description"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/First Name/)
    rendered.should match(/Last Name/)
    rendered.should match(/Email/)
    rendered.should match(/Subject/)
    rendered.should match(/Description/)
  end
end
