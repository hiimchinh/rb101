arr = [{a: 1}, {b: 2, c: 3}, {d: 4, e: 5, f: 6}]
increment_arr = arr.map do |hash|
  result = {}
  hash.each do |k, v|
    result[k] = v += 1
  end
  result
end
p increment_arr