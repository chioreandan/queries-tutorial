# frozen_string_literal: true

source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.7.1'

# Core
gem 'bootsnap', '>= 1.2.0', require: false
gem 'pg', '>= 0.18'
gem 'puma', '~> 4.1'
gem 'rails', '~> 6.0.3.2'
gem 'sidekiq', '>= 5.2.0'
gem 'webpacker', '~> 4.0'

# Configuration
gem 'dotenv-rails', '~> 2.7', '>= 2.7.1'

# Serialization
gem 'active_model_serializers', '~> 0.10.9'

group :development do
  gem 'amazing_print', '~> 1.2', '>= 1.2.1'
  gem 'annotate', '~> 2.7', '>= 2.7.4'
  gem 'better_errors', '~> 2.5', '>= 2.5.1'
  gem 'brakeman', '~> 4.5', require: false
  gem 'bundler-audit', '~> 0.6.1', require: false
  gem 'letter_opener', '~> 1.7'
  gem 'listen', '~> 3.2'
  gem 'overcommit', '~> 0.46.0', require: false
  gem 'rubocop', '~> 0.84.0', require: false
  gem 'spring', '~> 2.0', '>= 2.0.2'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

group :development, :test do
  gem 'bullet', '~> 6.1'
  gem 'database_cleaner', '~> 1.7'
  gem 'dox', '~> 1.1', require: false
  gem 'factory_bot_rails', '~> 5.0', '>= 5.0.1'
  gem 'faker', '~> 1.9', '>= 1.9.3'
  gem 'rspec-rails', '~> 3.8', '>= 3.8.2'
  gem 'shoulda-matchers', '~> 4.0', '>= 4.0.1'
  gem 'simplecov', '~> 0.16.1', require: false
  gem 'vcr', '~> 4.0'
  gem 'rails-erd', '~> 1.6'
end
