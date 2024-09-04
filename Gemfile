# frozen_string_literal: true

source 'https://rubygems.org'

ruby file: '.tool-versions'

gem 'bootsnap', require: false
gem 'dotenv'
gem 'mini_magick'
gem 'puma', '>= 5.0'
gem 'rails', github: 'rails/rails', branch: '7-2-stable'
gem 'ruby-vips', '~> 2.2'
gem 'tzinfo-data', platforms: %i[windows jruby]

group :development, :test do
  gem 'debug', platforms: %i[mri windows]
  gem 'rspec-rails', '~> 6.1'
end

group :development do
  gem 'rubocop', '~> 1.62', require: false
  gem 'rubocop-performance', '~> 1.20', require: false
  gem 'rubocop-rails', '~> 2.24', require: false
  gem 'rubocop-rspec', '~> 2.27', require: false
  gem 'web-console'
end
