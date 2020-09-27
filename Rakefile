# frozen_string_literal: true

require 'bundler/gem_tasks'
require 'rake/testtask'
require 'thermite/tasks'

desc 'Copy official i18n tests'
task :copy_official_i18n_tests do |t|
  FileUtils.cp_r 'submodules/i18n/test', '.'
end

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
task test: ['thermite:build', 'thermite:test']
