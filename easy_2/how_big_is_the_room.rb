SQ_FEET_TO_SQ_INCHES = 144
SQ_FEET_TO_SQ_CENTIMETERS = 929.03

puts "Enter the length of the room in feet:"
length = gets.chomp.to_f
puts "Enter the width of the room in feet:"
width = gets.chomp.to_f

area_in_sq_feet = (length * width).round(2)
area_in_sq_inches = (area_in_sq_feet * SQ_FEET_TO_SQ_INCHES).round(2)
area_in_sq_centimeters = (area_in_sq_feet * SQ_FEET_TO_SQ_CENTIMETERS).round(2)
puts "The area of the room is #{area_in_sq_feet} square feet (#{area_in_sq_inches} square inches and #{area_in_sq_centimeters} square centimeters)."