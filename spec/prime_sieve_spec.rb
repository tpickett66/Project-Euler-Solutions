require File.expand_path(File.dirname(__FILE__)) + '/spec_helper'

describe PrimeSeive do
  describe "finding primes up to a certain number" do
    it "must return an array of primes less than the specified number" do
      expected_primes = [
        2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47, 53, 59, 61,
        67, 71, 73, 79, 83, 89, 97]
      PrimeSeive.primes_less_than(100).must_equal expected_primes
    end
  end

  describe "finding the nth prime" do
    it 'must return the 5th prime correctly' do
      PrimeSeive.nth_prime(5).must_equal 11
    end

    it 'must return the 25th prime correctly' do
      PrimeSeive.nth_prime(25).must_equal 97
    end
  end
end
