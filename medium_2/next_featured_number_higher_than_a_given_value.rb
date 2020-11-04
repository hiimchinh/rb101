
def featured(num)
  multiplyer = num / 7
  loop do
    multiplyer += 1
    break if multiplyer.odd? && no_duplicate?(multiplyer)
  end
  multiplyer * 7
end

def no_duplicate?(multiplyer)
  next_featured_number = (multiplyer * 7).to_s
  next_featured_number.each_char do |char|
    return if next_featured_number.count(char) > 1
  end
  true
end 

# problem: find next featured number higher than the input
# featured number: is an odd number that is multiple of 7, and whose digits occur exactly once each
# find the multiplyer by divide the number by 7 + 1
# find the next featured number by multiply the multiplyer by 7, if the number has duplicate digits 

# test cases
puts featured(12) == 21
puts featured(20) == 21
puts featured(21) == 35
puts featured(997) == 1029
puts featured(1029) == 1043
puts featured(999_999) == 1_023_547
puts featured(999_999_987) == 1_023_456_987

puts featured(9_999_999_999) # -> There is no possible number that fulfills those requirements