def merge(arr1, arr2)
  returned_arr = []
  arr1.each { |n| returned_arr << n if !returned_arr.include?(n) }
  arr2.each { |n| returned_arr << n if !returned_arr.include?(n) }
  returned_arr
end

def merge_2(arr1, arr2)
  arr1 | arr2
end

# test cases
puts merge([1, 3, 5], [3, 6, 9]) == [1, 3, 5, 6, 9]
puts merge_2([1, 3, 5], [3, 6, 9]) == [1, 3, 5, 6, 9]
