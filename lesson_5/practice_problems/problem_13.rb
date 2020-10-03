arr = [[1, 6, 7], [1, 4, 9], [1, 8, 3]]
sorted_arr = arr.sort_by do |sub_arr|
  a = sub_arr.select do |number|
    number.odd?
  end
end
p sorted_arr