HEXS = {
  '0' => 0,
  '1' => 1,
  '2' => 2,
  '3' => 3,
  '4' => 4,
  '5' => 5,
  '6' => 6,
  '7' => 7,
  '8' => 8,
  '9' => 9,
  'a' => 10,
  'b' => 11,
  'c' => 12,
  'd' => 13,
  'e' => 14,
  'f' => 15,
}
def hexadecimal_to_integer(string)
  index = 0
  total = 0
  string.chars.reverse.each do |char|
    total += HEXS[char.downcase] * (16 ** index)
    index += 1
  end
  total
end




# test cases
puts hexadecimal_to_integer('4D9f') == 19871
puts hexadecimal_to_integer('100') == 256
puts hexadecimal_to_integer('3E8') == 1000
puts hexadecimal_to_integer('1000') == 4096
puts hexadecimal_to_integer('FACE') == 64_206