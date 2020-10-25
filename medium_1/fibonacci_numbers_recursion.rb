def fibonacci(n)
  return 1 if [1, 2].include?(n)
  fibonacci(n - 1) + fibonacci(n - 2)
end



#  test cases
puts fibonacci(1) == 1
puts fibonacci(2) == 1
puts fibonacci(3) == 2
puts fibonacci(4) == 3
puts fibonacci(5) == 5
puts fibonacci(12) == 144
puts fibonacci(20) == 6765