def string_to_integer(string)
  char_as_digit = {
    '0' => 0,
    '1' => 1,
    '2' => 2,
    '3' => 3,
    '4' => 4,
    '5' => 5,
    '6' => 6,
    '7' => 7,
    '8' => 8,
    '9' => 9
  }
  total = 0
  index = 1
  string.chars.reverse.each do |char|
    number = char_as_digit[char]
    total += number * index
    index *= 10
  end
  total
end

#test cases
puts string_to_integer('4321') == 4321
puts string_to_integer('570') == 570
puts string_to_integer('650001') == 650001
