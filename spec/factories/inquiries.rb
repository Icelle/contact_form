# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :inquiry do
    first_name "MyString"
    last_name "MyString"
    email "MyString"
    subject "MyString"
    description "MyString"
  end
end
