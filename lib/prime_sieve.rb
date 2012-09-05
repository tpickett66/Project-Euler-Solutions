#= prime_seive.rb - My implementation of Sieve of Eratosthenes
require 'set'

module PrimeSeive
  def self.primes_less_than(n)
    primes = (2..n).to_set
    2.upto Math.sqrt(n) do |i|
      primes.delete_if{|n| (n > i && n%i == 0)} if primes.include?(i)
    end
    primes.to_a
  end
end
