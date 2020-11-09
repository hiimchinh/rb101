COUNTDOWN_NUMBER = 10

def decrease(counter)
  counter - 1
end

counter = COUNTDOWN_NUMBER

COUNTDOWN_NUMBER.times do
  puts counter
  counter = decrease(counter)
end

puts 'LAUNCH!'