# frozen_string_literal: true

require_relative 'config/application'
Rails.application.load_tasks

require 'rspec/core/rake_task'
task(:spec).clear
RSpec::Core::RakeTask.new(:spec) do |t|
  t.verbose = false
end

require 'rubocop/rake_task'
RuboCop::RakeTask.new(:rubocop) do |t|
  t.options = [
    '--autocorrect-all',
    '--cache=true',
    '--display-cop-names',
    '--display-time',
    '--parallel'
  ]
end

task(:default).clear
task default: %i[rubocop spec]
