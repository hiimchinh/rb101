
require 'date'

print "What is your age? "
age = gets.chomp.to_i
print "At what age would you like to retire? "
retire_age = gets.chomp.to_i

today = Date.today
current_year = today.year
year_to_retirement = retire_age - age
retire_year = year_to_retirement + current_year

puts
puts "It's #{current_year}. You will retire in #{retire_year}."
puts "You have only #{year_to_retirement} years of work to go!"
