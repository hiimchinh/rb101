print "What is your name? "
name = gets.chomp
if /!$/.match(name)
  name = name.upcase.delete_suffix('!')
  puts "HELLO #{name}. WHY ARE WE SCREAMING?"
else
  puts "Hello #{name}."
end

