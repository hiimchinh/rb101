def oddities(array)
  result = []
  array.each_with_index do |value, index|
    result.push(value) if index.even?
  end
  result
end

def evens(array)
  result = []
  index = 0
  while index < array.size
    result.concat([array[index]]) if index.odd?
    index += 1
  end
  result
end

def evens2(array)
  result = [] 
  array.each_index { |index| result.push(array[index]) if index.odd? }
  result
end

puts oddities([2, 3, 4, 5, 6]) == [2, 4, 6]
puts oddities([1, 2, 3, 4, 5, 6]) == [1, 3, 5]
puts oddities(['abc', 'def']) == ['abc']
puts oddities([123]) == [123]
puts oddities([]) == []

p evens([2,3,4,5,6])
p evens2([1,2,3,4,5,73,1])