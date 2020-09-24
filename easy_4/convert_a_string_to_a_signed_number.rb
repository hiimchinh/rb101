DIGITS = {
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

def string_to_integer(string)
  digits = string.chars.map { |char| DIGITS[char] }
  total = 0
  index = 1
  string.chars.reverse.each do |char|
    number = DIGITS[char]
    total += number * index
    index *= 10
  end
  total
end

def string_to_signed_integer(string)
  multiply_by = string.include?('-') ? -1 : 1
  string = string.delete('+-')
  string_to_integer(string) * multiply_by
end

puts string_to_signed_integer('4321') == 4321
puts string_to_signed_integer('-570') == -570
puts string_to_signed_integer('+100') == 100