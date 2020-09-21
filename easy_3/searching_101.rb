def prompt(message)
  puts "==> #{message}"
end
i = 1
list_number = []
while i < 6
  position = case i
  when 1
    '1st'
  when 2
    '2nd'
  when 3
    '3rd'
  else
    "#{i}th"
  end
  prompt("Enter the #{position} number: ")
  input = gets.chomp.to_i
  list_number.push(input)
  i += 1
end
prompt ("Enter the last number: ")
last_number = gets.chomp.to_i
if list_number.include?(last_number)
  puts "The number #{last_number} appears in #{list_number.to_a}"
else
  puts "The number #{last_number} does not appear in #{list_number.to_a}"
end