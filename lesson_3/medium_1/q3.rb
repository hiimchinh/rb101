def factors(number)
    factors = []
    divisor = number
    return factors if divisor <= 0
    begin
      factors << number / divisor if number % divisor == 0
      divisor -= 1
    end until divisor == 0
    factors
end

puts factors(0)
puts factors(34)
puts factors(55)