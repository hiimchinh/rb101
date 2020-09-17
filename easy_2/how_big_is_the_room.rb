SQMETERS_TO_SQFEET = 10.7639

puts "Enter the length of the room in meters:"
length = gets.chomp.to_f
puts "Enter the width of the room in meters:"
width = gets.chomp.to_f

area_in_meters = (length * width).round(2)
area_in_feet = (area_in_meters * SQMETERS_TO_SQFEET).round(2)
puts "The area of the room is #{area_in_meters} (#{area_in_feet} square feet)."