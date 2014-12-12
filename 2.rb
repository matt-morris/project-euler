def fib(n)
  n.times.each_with_object([0,1]) { |_, results| results << results[-2] + results[-1] }
end

n = 0
while fib(n).last < 4_000_000
  n += 1
end

p fib(n).reduce(0) { |sum, n| n % 2 == 0 ? (sum + n) : sum }
