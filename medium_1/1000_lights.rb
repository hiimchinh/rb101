def light(n)
  bulbs = {}
  1.upto(n) do |index|
    bulbs[index] = false
  end
  1.upto(n) do |i|
    index = i
    while index < n
      bulbs[index] = !bulbs[index]
      index += i
    end
  end
  bulbs.select { |k, v| v  }.keys
end

p light(5)
p light(10)
puts light(1000) == [1, 4, 9, 16, 25, 36, 49, 64, 81, 100, 121, 144, 169, 196, 225, 256, 289, 324, 361, 400, 441, 484, 529, 576, 625, 676, 729, 784, 841, 900, 961]