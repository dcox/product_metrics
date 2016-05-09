require 'rails_helper'

RSpec.describe Feature, type: :model do
  it "should have valid factory" do
    feature = FactoryGirl.build(:feature)
    expect(feature).to be_valid
  end

  it "should validate presence of name" do
    feature = FactoryGirl.build(:feature, :name => nil)
    expect(feature).to_not be_valid
  end

  it { should belong_to(:user) }
  it { should have_many(:metrics) }

end
