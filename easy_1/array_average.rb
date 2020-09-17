def average(array)
  sum = array.reduce(:+)
  result = sum.to_f / array.size
  result.round(2)
end

#test cases
puts average([1, 6]) == 3.5 # integer division: (1 + 6) / 2 -> 3
puts average([1, 5, 87, 45, 8, 8]) == 25.67
puts average([9, 47, 23, 95, 16, 52]) == 40.33