#= prime_seive.rb - My implementation of Sieve of Eratosthenes
require 'set'

module PrimeSeive
  def self.primes_less_than(n)
    primes = (2..n).to_set
    2.upto Math.sqrt(n).ceil do |i|
      primes.delete_if{|n| (n > i && n%i == 0)} if primes.include?(i)
    end
    primes.to_a
  end

  def self.nth_prime(n)
    primes = self.primes_less_than(n) # gotta start somewhere
    prime_count = primes.size
    while prime_count <= n
      bin = (primes.max .. primes.max ** 2).to_set

      primes.each do |p|
        bin.delete_if{|n| n > p && n%p == 0}
      end

      primes = bin
      prime_count += bin.size
    end

    primes.to_a.sort[-(prime_count-n)]
  end
end
