def sum_square_difference(number)
  sum_square = (1..number).reduce(:+) ** 2
  square_sum = (1..number).reduce do |sum, n|
    sum + n ** 2
  end
  sum_square - square_sum
end

# test cases
puts sum_square_difference(3) == 22
   # -> (1 + 2 + 3)**2 - (1**2 + 2**2 + 3**2)
puts sum_square_difference(10) == 2640
puts sum_square_difference(1) == 0
puts sum_square_difference(100) == 25164150