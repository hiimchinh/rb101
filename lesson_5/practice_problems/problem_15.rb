arr = [{a: [1, 2, 3]}, {b: [2, 4, 6], c: [3, 6], d: [4]}, {e: [8], f: [6, 10]}]
result_arr = arr.select do |hash|
  hash.all? do |_, arr|
    arr.all? { |n| n.even? }
  end
end
p result_arr