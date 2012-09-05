require File.expand_path(File.dirname(__FILE__)) + '/../spec_helper'

describe NumericExtension do
  describe "#palindrome?" do
    it "must return true for a palindromic number" do
      101.palindrome?.must_equal true
      1001.palindrome?.must_equal true
      10.01.palindrome?.must_equal true
    end

    it "must return false for non-palindromic numbers" do
      10.palindrome?.must_equal false
      95.palindrome?.must_equal false
      95.95.palindrome?.must_equal false
    end

    it "must return false for negitive numbers" do
      -1.palindrome?.must_equal false
    end

    it "must return false for single digit numbers" do
      0.palindrome?.must_equal false
      1.palindrome?.must_equal false
      9.palindrome?.must_equal false
    end
  end
end

