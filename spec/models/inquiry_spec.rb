require 'spec_helper'

describe Inquiry do
  it {should have_valid(:first_name).when('Icelle')}
  it {should_not have_valid(:first_name).when('', nil)}
  it {should have_valid(:last_name).when('Ku')}
  it {should_not have_valid(:last_name).when('', nil)}
  it {should have_valid(:subject).when('hello')}
  it {should_not have_valid(:subject).when('', nil)}
  it {should have_valid(:email).when('icelleku@gmail.com')}
  it {should_not have_valid(:email).when('', nil)}
  it {should have_valid(:description).when('abc123')}
  it {should_not have_valid(:description).when('', nil)}
end
