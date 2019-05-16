source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.5.1'

gem 'active_storage_validations'
gem 'acts_as_list'
gem 'aws-sdk-s3', require: false
gem 'bcrypt', '~> 3.1.7'
gem 'bootsnap', '>= 1.1.0', require: false
gem 'faker'
gem 'fast_jsonapi'
gem 'jbuilder'
gem 'jwt'
gem 'pg', '>= 0.18', '< 2.0'
gem 'puma', '~> 3.11'
gem 'pundit'
gem 'rack-cors'
gem 'rails', '~> 5.2.2'

group :development, :test do
  gem 'byebug', platforms: %i[mri mingw x64_mingw]
  gem 'pry'
  gem 'rspec-rails'
end

group :development do
  gem 'fasterer', '~> 0.4.2', require: false
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'rubocop', '~> 0.65.0', require: false
  gem 'rubocop-rspec', '~> 1.32', require: false
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

group :test do
  gem 'database_cleaner'
  gem 'dox', require: false
  gem 'factory_bot_rails'
  gem 'json_matchers'
  gem 'pundit-matchers'
  gem 'shoulda-matchers'
  gem 'simplecov'
end

gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]
