password = nil

def set_password(password)
  puts 'What would you like your password to be?'
  new_password = gets.chomp
  password = new_password
end

def verify_password(password)
  puts '** Login **'
  print 'Password: '
  input = gets.chomp
  p password
  if input == password
    puts 'Welcome to the inside!'
  else
    puts 'Authentication failed.'
  end
end

if !password
  password = set_password(password)
end

verify_password(password)

# This example is wrong because we're are trying to use local variable inside a method definition. 
# To solve this we have to add parameter for the method definition and pass the local variable password in as argument
