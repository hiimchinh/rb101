def leading_substrings(string)
  arrs = []
  1.upto(string.size) do |char_position|
    arrs << string[0, char_position]
  end
  arrs
end

# test cases
puts leading_substrings('abc') == ['a', 'ab', 'abc']
puts leading_substrings('a') == ['a']
puts leading_substrings('xyzzy') == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']