# frozen_string_literal: true

require 'rspec/core/rake_task'

desc 'Run all problem specs'
RSpec::Core::RakeTask.new(:spec) do |t|
  t.pattern = 'problems/**/*_spec.rb'
end

task default: :spec
