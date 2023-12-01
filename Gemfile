source "https://rubygems.org"

ruby "3.2.2"

# Bundle edge Rails instead: gem "rails", github: "rails/rails", branch: "main"
gem "rails", "~> 7.1.2"

# Use postgresql as the database for Active Record
gem "pg", "~> 1.1"

# Use the Puma web server [https://github.com/puma/puma]
gem "puma", ">= 5.0"

# Use Kredis to get higher-level data types in Redis [https://github.com/rails/kredis]
# gem "kredis"

# Use Active Model has_secure_password [https://guides.rubyonrails.org/active_model_basics.html#securepassword]
# gem "bcrypt", "~> 3.1.7"

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem "tzinfo-data", platforms: %i[ windows jruby ]

# Reduces boot times through caching; required in config/boot.rb
gem "bootsnap", require: false

# Use Active Storage variants [https://guides.rubyonrails.org/active_storage_overview.html#transforming-images]
# gem "image_processing", "~> 1.2"

# Use Rack CORS for handling Cross-Origin Resource Sharing (CORS), making cross-origin Ajax possible
# gem "rack-cors"

gem "jsonapi-serializer", "~> 2.2"
gem "oj", "~> 3.16"

gem "geocoder", "~> 1.8"

group :development, :test do
  # See https://guides.rubyonrails.org/debugging_rails_applications.html#debugging-with-the-debug-gem
  gem "debug", platforms: %i[ mri windows ]

  # RSpec
  gem "rspec", "~> 3.12"
  gem "rspec-core", "~> 3.12"
  gem "rspec-expectations", "~> 3.12"
  gem "rspec-mocks", "~> 3.12"
  gem "rspec-rails", "~> 6.1"
  gem "rspec-support", "~> 3.12"
end

group :development do
  # Speed up commands on slow machines / big apps [https://github.com/rails/spring]
  # gem "spring"

  # RuboCop is a Ruby static code analyzer (a.k.a. linter) and code formatter
  gem "rubocop", "~> 1.57", require: false
  gem "rubocop-rails", "~> 2.22", require: false
  gem "rubocop-rspec", "~> 2.25", require: false
  gem "rubocop-performance", "~> 1.19", require: false
end
