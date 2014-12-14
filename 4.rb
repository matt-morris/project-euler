# Largest palindrome product
# Problem 4
# A palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 × 99.

# Find the largest palindrome made from the product of two 3-digit numbers.

def palindrome?(n)
  n.to_s == n.to_s.reverse
end

p (1..999).map { |x| (1..999).map { |y| x * y } }.flatten.select { |n| palindrome? n }.sort.last
