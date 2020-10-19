def uppercase?(string)
  is_upper = true
  return false if string.empty?
  string.chars.each do |char|
    if char =~ /[a-z]/
      is_upper = false
    end
  end
  is_upper
end

# test cases
puts uppercase?('t') == false
puts uppercase?('T') == true
puts uppercase?('Four Score') == false
puts uppercase?('FOUR SCORE') == true
puts uppercase?('4SCORE!') == true
puts uppercase?('') == false

# uppcase? should return false for empty string because no word with anycase found
# 
