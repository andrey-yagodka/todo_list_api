FactoryBot.define do
  factory :comment do
    body { FFaker::Lorem.sentence }
    task { association :task }
  end

  trait :attach_file do
    after(:create) do |comment|
      file_path = Rails.root.join('spec', 'support', 'assets', 'test_file.jpg')
      file = Rack::Test::UploadedFile.new(file_path, 'image/jpg')
      comment.file.attach(file)
    end
  end
end
