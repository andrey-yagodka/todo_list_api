FactoryBot.define do
  factory :task do
    name { Faker::Lorem.word }
    deadline { Time.now + 1.week }
    project
  end
end
