def leading_substrings(string)
  arrs = []
  1.upto(string.size) do |char_position|
    arrs << string[0, char_position]
  end
  arrs
end

def substrings(string)
  result_arr = []
  
  0.upto(string.size - 1) do |char_position|
    substring = string.slice(char_position, string.size)
    result_arr.concat(leading_substrings(substring))
  end
  result_arr
end

### test cases
puts substrings('abcde') == [
  'a', 'ab', 'abc', 'abcd', 'abcde',
  'b', 'bc', 'bcd', 'bcde',
  'c', 'cd', 'cde',
  'd', 'de',
  'e'
]