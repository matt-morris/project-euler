# Even Fibonacci numbers
# Problem 2
# Each new term in the Fibonacci sequence is generated by adding the previous two terms. By starting with 1 and 2, the first 10 terms will be:

# 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, ...

# By considering the terms in the Fibonacci sequence whose values do not exceed four million, find the sum of the even-valued terms.

def fib(n)
  n.times.each_with_object([0,1]) { |_, results| results << results[-2] + results[-1] }
end

n = 0
while fib(n).last < 4_000_000
  n += 1
end

p fib(n).reduce(0) { |sum, n| n % 2 == 0 ? (sum + n) : sum }
