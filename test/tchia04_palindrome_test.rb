require "test_helper"

class Tchia04PalindromeTest < Minitest::Test
  def test_that_it_has_a_version_number
    refute_nil ::Tchia04Palindrome::VERSION
  end

  def test_non_palindrome
    assert !"apple".palindrome?
  end

  def test_non_palindrome_with_refute
    refute "apple".palindrome?
  end

  def test_literal_palindrome
    assert "racecar".palindrome?
  end

  def test_mixed_case_palindrome
    assert "RaceCar".palindrome?
  end

  def test_palindrome_with_punctuation
    #    skip "not working"
    assert "Madam, I'm Adam".palindrome?
  end

  def test_letters
    #    skip "temp"
    assert_equal "MadamImAdam", "Madam, I'm Adam.".letters
  end
end
