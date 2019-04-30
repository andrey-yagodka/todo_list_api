FactoryBot.define do
  user_password = Faker::Internet.password.first(User::LENGTH[:password])

  factory :user do
    username { Faker::Internet.username }
    password { user_password }
    password_confirmation { user_password }
  end
end
