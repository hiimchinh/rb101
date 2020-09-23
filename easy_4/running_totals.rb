def running_total(arr)
  sum = 0
  result = []
  arr.each do |num|
    sum += num
    result.push(sum)
  end
  result
end

#test cases
puts running_total([2, 5, 13]) == [2, 7, 20]
puts running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
puts running_total([3]) == [3]
puts running_total([]) == []