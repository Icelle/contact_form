# VISITOR
# I want to contact the site staff
# So that I can tell them how awesome they are
# Acceptance Criteria:

# I must specify a valid email address
# I must specify a subject
# I must specify a description
# I must specify a first name
# I must specify a last name

require 'spec_helper'

feature 'User creates a new Inquiry' do
  it 'creates a valid inquiry' do
    visit '/inquiries/new'
    fill_in "First name", with: "Icelle"
    fill_in "Last name", with: "Ku"
    fill_in "Email", with: "icelleku@gmail.com"
    fill_in "Subject", with: "hello"
    fill_in "Description", with: "aloha"
    click_on "Create Inquiry"

    expect(page).to have_content "Inquiry was successfully created."
  end

  it "requires a first name" do
    visit '/inquiries/new'
    click_on "Create Inquiry"
    expect(page).to have_content "can't be blank"
  end

  it "requires a last name" do
    visit '/inquiries/new'
    click_on "Create Inquiry"
    expect(page).to have_content "can't be blank"
  end

  it "requires a e-mail" do
    visit '/inquiries/new'
    click_on "Create Inquiry"
    expect(page).to have_content "can't be blank"
  end

  it "requires a subject" do
    visit '/inquiries/new'
    click_on "Create Inquiry"
    expect(page).to have_content "can't be blank"
  end

  it "requires a description" do
    visit '/inquiries/new'
    click_on "Create Inquiry"
    expect(page).to have_content "can't be blank"
  end
end
