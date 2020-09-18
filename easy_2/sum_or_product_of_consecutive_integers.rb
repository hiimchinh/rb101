def output(message)
  puts '>> ' + message
end
number = nil
loop do
  output "Please enter an integer greater than 0:"
  number = gets.chomp.to_i
  break if number > 0
  output "Your input is not an integer greater than 0."
end
loop do
  output "Enter 's' to compute the sum, 'p' to compute the product."
  type = gets.chomp
  case type.downcase
  when 's'
    sum = (1..number).reduce(:+)
    puts "The sum of the integers between 1 and #{number} is #{sum}."
    break
  when 'p'
    product = (1..number).reduce(:*)
    puts "The product of the integers between 1 and #{number} is #{product}."
    break
  else
    puts "Wrong type bruh."
  end
end
