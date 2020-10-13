def multiply_list(arr1, arr2)
  result_arr = []
  arr1.each_with_index do |n, index|
    result_arr << arr1[index] * arr2[index]
  end
  result_arr
end

def multiply_list_2(arr1, arr2)
  arr1.zip(arr2).map { |arr| arr.reduce(:*) }
end

# test cases
puts multiply_list([3, 5, 7], [9, 10, 11]) == [27, 50, 77]
puts multiply_list_2([3, 5, 7], [9, 10, 11]) == [27, 50, 77]