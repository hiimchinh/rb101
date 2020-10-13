def sum_of_sums(array)
  index = 0
  length = array.length
  result = 0
  while index < array.length
    result += array[index] * length
    index += 1
    length -= 1
  end
  result
end

# test cases
puts sum_of_sums([3, 5, 2]) == (3) + (3 + 5) + (3 + 5 + 2) # -> (21)
puts sum_of_sums([1, 5, 7, 3]) == (1) + (1 + 5) + (1 + 5 + 7) + (1 + 5 + 7 + 3) # -> (36)
puts sum_of_sums([4]) == 4
puts sum_of_sums([1, 2, 3, 4, 5]) == 35