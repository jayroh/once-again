# frozen_string_literal: true

source 'https://rubygems.org'

ruby '3.3.0'

gem 'mini_magick'
gem 'ruby-vips', '~> 2.2'
gem 'bootsnap', require: false
gem 'puma', '>= 5.0'
gem 'rails', github: 'rails/rails', branch: '7-1-stable'
gem 'tzinfo-data', platforms: %i[windows jruby]

group :development, :test do
  gem 'debug', platforms: %i[mri windows]
  gem 'rspec-rails', '~> 6.1'
end

group :development do
  gem 'web-console'
  gem 'rubocop', '~> 1.62', require: false
  gem 'rubocop-performance', '~> 1.20', require: false
  gem 'rubocop-rails', '~> 2.24', require: false
  gem 'rubocop-rspec', '~> 2.27', require: false
end
