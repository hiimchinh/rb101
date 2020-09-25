STRINGS = ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9']

def integer_to_string(int)
  string = ''
  loop do
    int, remainder = int.divmod(10)
    string.prepend(STRINGS[remainder])
    break if int == 0
  end
  string
end

def signed_integer_to_string(number)
  if number > 0
    '+' + integer_to_string(number)
  elsif number < 0
    '-' + integer_to_string(number * -1)
  else
    '0'
  end
end

#test cases
puts integer_to_string(4321) == '4321'
puts integer_to_string(0) == '0'
puts integer_to_string(5000) == '5000'

puts signed_integer_to_string(4321) == '+4321'
puts signed_integer_to_string(-123) == '-123'
puts signed_integer_to_string(0) == '0'