class Inquiry < ActiveRecord::Base
  validates :first_name, presence:true
  validates :last_name, presence:true
  validates :email, presence:true, email:true
  validates :subject, presence:true
  validates :description, presence:true
end
