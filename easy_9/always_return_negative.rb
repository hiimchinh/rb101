def negative(int)
  case
  when int == 0 
    0
  when int > 0
    -int
  else
    int
  end
end

# test cases
puts negative(5) == -5
puts negative(-3) == -3
puts negative(0) == 0      # There's no such thing as -0 in ruby