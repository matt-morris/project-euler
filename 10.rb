# Summation of primes
# Problem 10
# The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.

# Find the sum of all the primes below two million.

require 'prime'

Prime.each.reduce do |sum, n|
  if n < 2_000_000
    sum + n
  else
    p sum
    break
  end
end
