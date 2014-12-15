# Smallest multiple
# Problem 5
# 2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.

# What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?

# (1..Float::INFINITY).each do |n|
#   if (1..20).select { |i| n % i == 0 }.compact.length == 20
#     p n
#     break
#   end
# end

start = Time.now

#
# first approach:
# brute force works, but it's _way_ too slow
# 

# (1..Float::INFINITY).each do |n|
#   divisions = (1..20).select do |i|
#     x = n % i
#     break if x != 0
#     x
#   end || []
#   if divisions.compact.length == 20
#     p n
#     break
#   end
# end

# 
# second approach:
# discovered the greatest common divisor method
# http://en.wikipedia.org/wiki/Least_common_multiple
# 

p (1..20).reduce { |x, y| x.lcm(y) }

p "finished in #{Time.now - start} seconds."
