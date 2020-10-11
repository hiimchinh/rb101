def crunch(string)
  result_arr = []
  chars = string.chars
  chars.each do |char|
    result_arr << char if char != result_arr.last
  end
  result_arr.join('')
end


puts crunch('4444abcabccba') == '4abcabcba'
puts crunch('ggggggggggggggg') == 'g'
puts crunch('a') == 'a'
puts crunch('') == ''