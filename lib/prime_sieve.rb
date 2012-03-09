#= prime_seive.rb - My implementation of Sieve of Eratosthenes

module PrimeSeive
  def self.primes_less_than(n)
    primes = []
    
  end
end

# def sieve_upto(top)
#   sieve = []
#   for i in 2 .. top
#     sieve[i] = i
#   end
#   for i in 2 .. Math.sqrt(top)
#     next unless sieve[i]
#     (i*i).step(top, i) do |j|
#       sieve[j] = nil
#     end
#   end
#   sieve.compact
# end
# I think it can be improved on slightly thus:
# 
# def better_sieve_upto(n)
#   s = (0..n).to_a
#   s[0] = s[1] = nil
#   s.each do |p|
#     next unless p
#     break if p * p > n
#     (p*p).step(n, p) { |m| s[m] = nil }
#   end
#   s.compact
# end

# while primes[index]**2 <= primes.last
#       prime = primes[index]
#       primes = primes.select { |x| x == prime || x%prime != 0 }
#       index += 1
# end
# 
# while Math.sqrt(primes.last).ceil >= primes[index]
#     (primes[index] * 2).step(primes.last, primes[index]) do
#       |x|
#       primes.delete(x)
#     end
#     index += 1
# end