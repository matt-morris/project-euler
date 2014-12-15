# 10001st prime
# Problem 7
# By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see that the 6th prime is 13.

# What is the 10 001st prime number?

start = Time.now
require 'prime'

i = 0
Prime.each do |n|
  if (i += 1) == 10_001
    p n
    break
  end
end
p "finished in #{Time.now - start} seconds."
