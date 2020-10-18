def repeater(str)
  repeated_str = ''
  str.chars.each do |char|
    repeated_str << char * 2
  end
  repeated_str
end

# test cases
puts repeater('Hello') == "HHeelllloo"
puts repeater("Good job!") == "GGoooodd  jjoobb!!"
puts repeater('') == ''