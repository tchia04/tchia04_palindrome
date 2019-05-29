# frozen_string_literal: true

require 'tchia04_palindrome/version'

# Description/Explanation of the String class to get rid of the Style/Documentation from rubocop
class String
  # Returns true for a palindrome, false otherwise.
  def palindrome?
    processed_content == processed_content.reverse
  end

  # Returns the letters in the string.
  def letters
    the_letters = []
    letter_regex = /[a-z]/i
    chars.each do |character|
      the_letters << character if character.match(letter_regex)
    end
    the_letters.join
  end

  private

  # Returns content for palindrome testing.
  def processed_content
    scan(/[a-z]/i).join.downcase

    #      self.letters.downcase
  end
end

# module Tchia04Palindrome
#  class Error < StandardError; end
# Your code goes here...
# end
