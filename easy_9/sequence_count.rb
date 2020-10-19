def sequence(count, first_num)
  sequence_arr = []
  1.upto(count) do |num|
    sequence_arr << num * first_num
  end
  sequence_arr
end

# test cases
puts sequence(5, 1) == [1, 2, 3, 4, 5]
puts sequence(4, -7) == [-7, -14, -21, -28]
puts sequence(3, 0) == [0, 0, 0]
puts sequence(0, 1000000) == []
