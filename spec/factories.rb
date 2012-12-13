FactoryGirl.define do
  factory :user do
    sequence(:display_name){|n| "User#{n}"}
    sequence(:email){|n| "email#{n}@example.com"}
    password "testtest"
    password_confirmation "testtest"

    #after(:create){|user| user.confirm!} comment out when you use devise confirmation module
  end

  factory :tweet do
    sequence(:body){|n| "Tweet#{n}"}
    user
  end
end
