# frozen_string_literal: true

require 'bundler/gem_tasks'
require 'rake/testtask'

Rake::TestTask.new(:test) do |t|
  t.libs << 'test'
  t.libs << 'lib'
  t.test_files = FileList['test/**/*_test.rb']
end

task default: %i[rubocop:exe_rubocop rubocop:print_rubocop_log]
task rubocop: %i[rubocop:exe_rubocop rubocop:print_rubocop_log]

namespace :rubocop do
  desc 'Execute rubocop'
  task :exe_rubocop do
    #  sh "rubocop"      # works
    #  sh "rubocop -S"   # works
    #   sh "rubocop -S -o rubocop.log" # don't work
    #   sh "rubocop -S > rubocop.log 2>&1" # don't work
    #   sh "rubocop -S -o rubocop.log"
    `rubocop -S -o rubocop.log`
  end
  desc 'Print rubocop.log'
  task :print_rubocop_log do
    File.foreach('rubocop.log') { |line| puts line }
  end
end
