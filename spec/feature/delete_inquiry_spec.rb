require 'spec_helper'

feature "Admin visits the inquiry page" do
  it 'can delete inquiries on the page' do
    Inquiry.create!(first_name: "Koa", last_name: "Brickley", email: "k@koa.com", subject: "Meow", description: "lfdvkdfonvoenfbebrb")
    visit '/inquiries'
    expect(Inquiry.all.count).to eql(1)
    click_link 'Delete'
    expect(Inquiry.all.count).to eql(0)
  end
end
