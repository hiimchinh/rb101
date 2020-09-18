print "What is the bill? "
bill = gets.chomp.to_f
print "What is the tip percentage? "
tip_percentage = gets.chomp.to_f

def format_money(amount)
  format('%#.2f', amount.to_s)
end

tip = (bill * tip_percentage / 100).round(2)
total = (bill + tip).round(2)
puts 
puts "The tip is $#{format_money(tip)}"
puts "The total is $#{format_money(total)}"