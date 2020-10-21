def rotate_rightmost_digits(int, n)
  rotate_array(int.to_s.chars, n).join('').to_i
end

def rotate_array(arr, n)
  arr.push(arr.delete_at(-n))
end

def max_rotation(int)
  int_size = int.to_s.size
  while int_size > 0
    int = rotate_rightmost_digits(int, int_size)
    int_size -= 1
  end
  int
end


# test cases
puts max_rotation(735291) == 321579
puts max_rotation(3) == 3
puts max_rotation(35) == 53
puts max_rotation(105) == 15 # the leading zero gets dropped
puts max_rotation(8_703_529_146) == 7_321_609_845
