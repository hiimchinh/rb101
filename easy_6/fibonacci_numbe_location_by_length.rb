require 'pry'

def find_fibonacci_index_by_length(int)
  first_num = second_num = 1
  index = 2
  loop do
    index += 1
    fibonacci_num = first_num + second_num
    break if fibonacci_num.to_s.length == int
    first_num = second_num
    second_num = fibonacci_num
    
  end
  index
end

# input is the length of the number
# output is the first index of the fibonacci sequence that has the length equals the input

#test cases
puts find_fibonacci_index_by_length(2) == 7          # 1 1 2 3 5 8 13
puts find_fibonacci_index_by_length(3) == 12         # 1 1 2 3 5 8 13 21 34 55 89 144
puts find_fibonacci_index_by_length(10) == 45
puts find_fibonacci_index_by_length(100) == 476
puts find_fibonacci_index_by_length(1000) == 4782
puts find_fibonacci_index_by_length(10000) == 47847