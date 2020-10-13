def sum_of_sums(array)
  sum_total = 0
  1.upto(array.length) do |array_position|
    sum_total += array.slice(0, array_position).reduce(:+)
  end
  sum_total
end

# test cases
puts sum_of_sums([3, 5, 2]) == (3) + (3 + 5) + (3 + 5 + 2) # -> (21)
puts sum_of_sums([1, 5, 7, 3]) == (1) + (1 + 5) + (1 + 5 + 7) + (1 + 5 + 7 + 3) # -> (36)
puts sum_of_sums([4]) == 4
puts sum_of_sums([1, 2, 3, 4, 5]) == 35