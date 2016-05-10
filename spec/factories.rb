FactoryGirl.define do
  sequence :email do |n|
    "person#{n}@zendesk.com"
  end

  factory :metric do
    name        "Number of active SLAs"
    feature
  end

  factory :feature do
    name        "Service Level Agreements"
    user
  end

  factory :user do
    email      
    password    "hello world"
    first_name  "Desiree"
    last_name   "Cox"
  end
end
