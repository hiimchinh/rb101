def stringy(int, start_with = 1)
  string = ''
  int.times do |index|
    if start_with == 1
      num = index.even? ? '1' : '0'
    elsif start_with == 0
      num = index.even? ? '0' : '1'
    end
    string << num
  end
  string
end

# test cases

puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'

puts stringy(6, 0) == '010101'
puts stringy(12, 0) == '010101010101'