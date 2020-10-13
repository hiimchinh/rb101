def multiply_all_pairs(arr1, arr2)
  result_arr = []
  arr1.each do |n1|
    arr2.each do |n2|
      result_arr << n2 * n1
    end
  end
  result_arr.sort
end

# test cases
puts multiply_all_pairs([2, 4], [4, 3, 1, 2]) == [2, 4, 4, 6, 8, 8, 12, 16]