def show_multiplicative_average(arr)
  result = arr.reduce(:*).to_f / arr.length
  sprintf("%.3f", result)
end

# test cases
puts show_multiplicative_average([3, 5])                # => The result is 7.500
puts show_multiplicative_average([6])                   # => The result is 6.000
puts show_multiplicative_average([2, 5, 7, 11, 13, 17]) # => The result is 28361.667