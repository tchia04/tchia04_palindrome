# frozen_string_literal: true

require 'bundler/gem_tasks'
require 'rake/testtask'

Rake::TestTask.new(:test) do |t|
  t.libs << 'test'
  t.libs << 'lib'
  t.test_files = FileList['test/**/*_test.rb']
end

task default: :rubocop

task :rubocop do
  #  sh "rubocop"      # works
  #  sh "rubocop -S"   # works
  #   sh "rubocop -S -o rubocop.log" # don't work
  #   sh "rubocop -S > rubocop.log 2>&1" # don't work
  #   sh "rubocop -S -o rubocop.log"
  `rubocop -S -o rubocop.log`
  `cat rubocop.log`
end
