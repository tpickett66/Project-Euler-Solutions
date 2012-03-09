#!/usr/bin/env ruby
# endoding: UTF-8
#
# http://projecteuler.net/problem=1
# If we list all the natural numbers below 10 that are multiples of 3 or 5,
# we get 3, 5, 6 and 9. The sum of these multiples is 23.
#
# Find the sum of all the multiples of 3 or 5 below 1000.

# My twist on this will be finding the sum of all the natural numbers 
# being a multiple of 3 or 5 below a number supplied on the commandline

if ARGV[0].nil?
