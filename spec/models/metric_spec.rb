require 'rails_helper'

RSpec.describe Metric, type: :model do

  it { should belong_to(:feature) }

  it "should have valid factory" do
    metric = FactoryGirl.build(:metric)
    expect(metric).to be_valid
  end

  it "validates presence of name" do 
    metric = FactoryGirl.build(:metric, :name => nil)
    expect(metric).to_not be_valid
  end

  it "validates uniqueness of name" do 
    FactoryGirl.create(:metric)
    should validate_uniqueness_of(:name).case_insensitive
  end
end
