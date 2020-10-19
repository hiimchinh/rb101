def sequence(num)
  arr = []
  num.downto(1) { |n| arr.unshift(n) }
  arr
end

#test cases
puts sequence(5) == [1, 2, 3, 4, 5]
puts sequence(3) == [1, 2, 3]
puts sequence(1) == [1]
