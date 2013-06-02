FactoryGirl.define do
  factory :user do
    name     "Examle User"
    email    "example@user.com"
    password "foobar"
    password_confirmation "foobar"
  end
end