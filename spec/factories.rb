FactoryGirl.define do
  factory :user do
    sequence(:name)  { |n| "Examle User {#n}" }
    sequence(:email) { |n| "example_#{n}@user.com" }
    password "foobar"
    password_confirmation "foobar"
    
    factory :admin do
      admin true
    end
  end
  
  factory :micropost do
    content 'test message'
    user
  end
end
