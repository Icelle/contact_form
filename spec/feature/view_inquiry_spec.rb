# ADMIN
# As an admin
# I want to review contact inquiries
# So that I can respond or take action

# As an admin
# I want to delete an inquiry
# So that I can remove spam or other undesirable inquiries


require 'spec_helper'

feature "Admin visits the inquiry page" do

  it "sees a title" do
    visit '/inquiries'
    expect(page).to have_content "Listing Inquiries"
  end

  it "sees all the inquiries listed on the page" do
   inquiry1 = Inquiry.create!(first_name: "Icelle", last_name: "Ku", email: "aa@gmail.com", subject: "Hello", description: "jdhajeifmcldlro")
   inquiry2 = Inquiry.create!(first_name: "Koa", last_name: "Brickley", email: "k@koa.com", subject: "Meow", description: "lfdvkdfonvoenfbebrb")
   visit '/inquiries'
   expect(page).to have_content inquiry1.first_name, inquiry1.last_name, inquiry1.email, inquiry1.subject, inquiry1.description
   expect(page).to have_content inquiry2.first_name, inquiry2.last_name, inquiry2.email, inquiry2.subject, inquiry2.description
  end
end
