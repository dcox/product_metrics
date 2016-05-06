require 'rails_helper'

RSpec.describe User, type: :model do

  it "should have valid factory" do 
    FactoryGirl.build(:user).should be_valid
  end

  it "should require a corporate email" do
    FactoryGirl.build(:user, :email => "des@yahoo.com").should_not be_valid
  end

  it "should require a first name" do
    FactoryGirl.build(:user, :first_name => nil).should_not be_valid
  end

  it "should require a last name" do
    FactoryGirl.build(:user, :last_name => nil).should_not be_valid
  end

end
