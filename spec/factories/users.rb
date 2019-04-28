FactoryBot.define do
  factory :user do
    username { Faker::Internet.username }
    password { Faker::Internet.password.first(User::LENGTH[:password]) }
  end
end
