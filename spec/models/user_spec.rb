require 'rails_helper'

RSpec.describe User, type: :model do

  it "should have valid factory" do 
    user = FactoryGirl.build(:user)
    expect(user).to be_valid
  end

  it "should require a corporate email" do
    invalid_user = FactoryGirl.build(:user, :email => "des@yahoo.com")
    expect(invalid_user).to_not be_valid
  end

  it "should require a first name" do
    nameless_user = FactoryGirl.build(:user, :first_name => nil)
    expect(nameless_user).to_not be_valid
  end

  it "should require a last name" do
    another_nameless_user = FactoryGirl.build(:user, :last_name => nil)
    expect(another_nameless_user).to_not be_valid
  end

  it { should have_many(:features) }  
  it { should have_many(:metrics).through(:features) }
end
