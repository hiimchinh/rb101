def rotate_array(arr)
  arr.push(arr.shift)
end

def rotate_string(str)
  str[1..-1] + str[0]
end

def rotate_int(int)
  rotate_string(int.to_s).to_i
end

# test cases
puts rotate_array([7, 3, 5, 2, 9, 1]) == [3, 5, 2, 9, 1, 7]
puts rotate_array(['a', 'b', 'c']) == ['b', 'c', 'a']
puts rotate_array(['a']) == ['a']

x = [1, 2, 3, 4]
puts rotate_array(x) == [2, 3, 4, 1]   # => true
x == [1, 2, 3, 4]                 # => true
puts rotate_string('abcdef') == 'bcdefa'
puts rotate_int(12354) == 23541