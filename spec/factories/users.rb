FactoryBot.define do
  factory :user do
    username { FFaker::Internet.user_name }
    password { 'password' }
  end
end
