# frozen_string_literal: true

# To create a gemset for this project
#   rvm use 2.6.3 --install --binary --fuzzy
#   rvm --create --ruby-version ruby-2.6.3@tchia04_palindrome
#
# gem install bundler -v 1.17.3
#
# bundle install --jobs=3 --retry=3 --deployment --path=${BUNDLE_PATH:-vendor/bundle}
#
# To update a gem:
#   bundle lock --update <pkg_name>
#   git diff
#   bundle install
source 'https://rubygems.org'

git_source(:github) { |repo_name| "https://github.com/#{repo_name}" }

# Specify your gem's dependencies in tchia04_palindrome.gemspec
gemspec

group :test do
  gem 'minitest-reporters'
  # gem 'rubocop', '~> 0.70.0'
  gem 'rubocop', '~> 0.67.2'
  # gem 'rubocop', '~> 0.52.1'
  # gem 'rubocop-performance'
  # gem 'rubocop-rspec'
end
