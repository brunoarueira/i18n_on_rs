# frozen_string_literal: true

require 'bundler/gem_tasks'
require 'rake/testtask'
require 'thermite/tasks'

task default: [:test]

Rake::TestTask.new(:test) do |t|
  t.libs << 'lib'
  t.libs << 'test'
  t.pattern = 'test/**/*_test.rb'
  t.verbose = true
  t.warning = true
end
Rake::Task['test'].comment = 'Run all i18n tests'

Thermite::Tasks.new
desc 'Run Rust & Ruby testsuites'
task test: ['thermite:build', 'thermite:test'] do
end
