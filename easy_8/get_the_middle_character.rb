def center_of(str)
  center_str = ''
  middle_position = str.size / 2
  if str.size.odd?
    center_str << str[middle_position]
  else
    center_str << str[middle_position - 1] << str[middle_position]
  end
  center_str
end

# input: non-empty string argument, if str has odd length, return middle char, elsif str has even length return both middle char

# test cases
puts center_of('I love ruby') == 'e'
puts center_of('Launch School') == ' '
puts center_of('Launch') == 'un'
puts center_of('Launchschool') == 'hs'
puts center_of('x') == 'x'