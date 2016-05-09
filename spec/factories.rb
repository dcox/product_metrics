FactoryGirl.define do
  factory :metric do
    name        "Number of active SLAs"
    feature
  end
  factory :feature do
    name        "Service Level Agreements"
    user
  end
  factory :user do
    email       "dcox@zendesk.com"
    password    "hello world"
    first_name  "Desiree"
    last_name   "Cox"
  end
end
