def rotate_rightmost_digits(int, n)
  rotate_array(int.to_s.chars, n).join('').to_i
end

def rotate_array(arr, n)
  arr.push(arr.delete_at(-n))
end

# test cases
p rotate_rightmost_digits(735291, 1) == 735291
p rotate_rightmost_digits(735291, 2) == 735219
p rotate_rightmost_digits(735291, 3) == 735912
p rotate_rightmost_digits(735291, 4) == 732915
p rotate_rightmost_digits(735291, 5) == 752913
p rotate_rightmost_digits(735291, 6) == 352917
