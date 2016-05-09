FactoryGirl.define do
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
