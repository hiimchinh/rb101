def running_total(arr)
  sum = 0
  arr.map { |value| sum += value }
end

def running_total_2(arr)
  sum = 0
  arr.each_with_object([]) do |value, result|
    sum += value
    result << sum
  end
end

#test cases
puts running_total([2, 5, 13]) == [2, 7, 20]
puts running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
puts running_total([3]) == [3]
puts running_total([]) == []

puts running_total_2([2, 5, 13]) == [2, 7, 20]
puts running_total_2([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
puts running_total_2([3]) == [3]
puts running_total_2([]) == []

