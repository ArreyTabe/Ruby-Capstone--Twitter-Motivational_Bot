# frozen_string_literal: true

require 'rubocop/rake_task'

task default: %w[spec]
task default: %w[lint spec]

RuboCop::RakeTask.new(:lint) do |task|
  task.patterns = ['bin/**/*.rb', 'spec/**/*.rb']
  task.fail_on_error = false
end

task :run do
  ruby 'bin/main.rb'
end

task :test do
  ruby 'spec/test_spec.rb'
end
