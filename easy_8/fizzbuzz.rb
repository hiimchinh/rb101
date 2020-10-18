def fizzbuzz(start, stop)
  arr = []
  start.upto(stop) do |n|
    arr << (if n % 15 == 0
              'FizzBuzz'
            elsif n % 3 == 0
              'Fizz'
            elsif n % 5 == 0
              'Buzz'
            else
              n
            end)
  end
  puts arr.join(', ')
end

fizzbuzz(1, 15) # -> 1, 2, Fizz, 4, Buzz, Fizz, 7, 8, Fizz, Buzz, 11, Fizz, 13, 14, FizzBuzz