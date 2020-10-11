def interleave(arr1, arr2)
  index = 0
  result_arr = []
  while index < arr1.length
    result_arr << arr1[index]
    result_arr << arr2[index]
    index += 1
  end
  result_arr
end

def interleave_2(arr1, arr2)
  arr1.zip(arr2).flatten
end


#test cases

puts interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']
puts interleave_2([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']