# frozen_string_literal: true

source 'https://rubygems.org'

ruby '3.3.0'

gem 'rails', github: 'rails/rails', branch: '7-1-stable'

gem 'puma', '>= 5.0'

gem 'tzinfo-data', platforms: %i[windows jruby]

gem 'bootsnap', require: false

group :development, :test do
  gem 'debug', platforms: %i[mri windows]
end

group :development do
  gem 'web-console'
end

gem 'rubocop', '~> 1.62', group: :development, require: false
gem 'rubocop-performance', '~> 1.20', group: :development, require: false
gem 'rubocop-rails', '~> 2.24', group: :development, require: false
gem 'rubocop-rspec', '~> 2.27', group: :development, require: false

gem 'rspec-rails', '~> 6.1', groups: %i[test development]

gem "ruby-vips", "~> 2.2"
gem "mini_magick"
