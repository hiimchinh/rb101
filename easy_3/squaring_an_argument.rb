def multiply(number1, number2)
  number1 * number2
end

def power_to_the_n(num, n = 2)
  multiply(num ** n, 1)
end

puts power_to_the_n(8, 3)
puts power_to_the_n(-5)