def include?(array, int)
  is_included = false
  array.each do |n|
    is_included = true if n == int
  end
  is_included
end

# test cases
puts include?([1,2,3,4,5], 3) == true
puts include?([1,2,3,4,5], 6) == false
puts include?([], 3) == false
puts include?([nil], nil) == true
puts include?([], nil) == false