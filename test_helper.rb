if ENV['COVERAGE']
  require 'simplecov'
  SimpleCov.start do
    enable_coverage :branch

    add_filter "/test_helper.rb"
    add_group "Problems", "problems"
  end

  puts "SimpleCov started: coverage report will be generated in `coverage/`"
end

