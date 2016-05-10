FactoryGirl.define do
  sequence :email do |n|
    "person#{n}@zendesk.com"
  end

  sequence :name do |n|
    "feature#{n}"
  end

  factory :metric do
    name        "Number of active SLAs"
    feature
  end

  factory :user do
    email       { generate(:email) }
    password    "hello world"
    first_name  "Desiree"
    last_name   "Cox"
  end

  factory :feature do
    name        { generate(:name) }
    user
  end
end
