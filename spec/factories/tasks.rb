FactoryBot.define do
  factory :task do
    name { FFaker::Lorem.word }
    deadline { rand(1..10).years.from_now }
    project
  end
end
