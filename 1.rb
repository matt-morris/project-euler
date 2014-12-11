def sum_multiples_of_3_or_5(n)
  (1...n).inject(0) do |sum, n|
    sum + if n % 3 == 0 || n % 5 == 0
      n
    else
      0
    end
  end
end

p sum_multiples_of_3_or_5(1000)
