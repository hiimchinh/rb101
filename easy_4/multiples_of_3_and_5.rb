def multisum(int)
  sum = 0.upto(int).reduce do |sum, n|
    n % 3 == 0 || n % 5 == 0 ? sum + n : sum
  end
  sum
end

#test cases
puts multisum(3)
puts multisum(3) == 3
puts multisum(5) == 8
puts multisum(10) == 33
puts multisum(1000) == 234168