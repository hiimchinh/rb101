def xor?(first, second)
  if (first && !second) || (second && !first)
    true
  else
    false
  end
end

# test cases
puts xor?(5.even?, 4.even?) 
puts xor?(5.odd?, 4.odd?) 
puts xor?(5.odd?, 4.even?)
puts xor?(5.even?, 4.odd?) 