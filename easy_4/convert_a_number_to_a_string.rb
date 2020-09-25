STRINGS = ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9']

def integer_to_string(number)
  string = ''
  loop do
    number, remainder = number.divmod(10)
    string.prepend(STRINGS[remainder])
    break if number == 0
  end
  string
end

def signed_integer_to_string(number)
  string = case number <=> 0
  when -1 then "-"
  when +1 then "+"
  else         ""
  end
  number = -number if number < 0
  string + integer_to_string(number)
end

#test cases
puts integer_to_string(4321) == '4321'
puts integer_to_string(0) == '0'
puts integer_to_string(5000) == '5000'

puts signed_integer_to_string(4321) == '+4321'
puts signed_integer_to_string(-123) == '-123'
puts signed_integer_to_string(0) == '0'