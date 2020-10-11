def halvsies(array)
  first_arr = []
  second_arr = []
  array.each_with_index do |n, i|
    if (i < (array.length.to_f / 2))
      first_arr << n
    else
      second_arr << n
    end
  end
  [first_arr, second_arr]
end

# 1. create first arr and second arr
# 2. loop through the array with index 
# 3. if the index <= middle of the array => add to the first arr
# 3. else push to the second arr
# 4. return the array contain first arr and second arr


# test cases
p halvsies([1, 5, 2, 4, 3])
puts halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
puts halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
puts halvsies([5]) == [[5], []]
puts halvsies([]) == [[], []]