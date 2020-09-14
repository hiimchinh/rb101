def prompt(message)
  Kernel.puts("=> " + message)
end

def valid_number?(num)
  num.to_i() != 0
end

prompt('Welcome to Calculator! Enter your name:')
name = ''
loop do
  name = Kernel.gets().chomp()
  if name.empty?()
    prompt("Make sure your name is valid.")
  else
    break
  end
end


prompt("Hi #{name}!")

number1 = ''

loop do
  loop do
    prompt("What's the first number?")
    number1 = Kernel.gets().chomp()
    if valid_number?(number1)
      break
    else
      prompt("Hmm... that doesn't look like a valid number")
    end
  end
  
  number2 = ''
  
  loop do
    prompt("What's the second number?")
    number2 = Kernel.gets().chomp()
    if valid_number?(number2)
      break
    else
      prompt("Hmm. that doesn't look like a valid number")
    end
  end
  prompt("What operation would you like to perform? 1) add 2) subtract 3) multiply 4) divide")
  operator = ''
  loop do
    operator = Kernel.gets().chomp()
    if %w(1 2 3 4).include?(operator)
      break
    else
      prompt("Must choose 1, 2, 3 or 4.")
    end
  end
  result = case operator
            when '1'
              number1.to_i() + number2.to_i()
            when '2'
              number1.to_i() - number2.to_i()
            when '3'
              number1.to_i() * number2.to_i()
            when '4'
              number1.to_f() / number2.to_f()
            end
  prompt("The result is #{result}!")
  prompt("Do you want to calculate again? (y to do it again)")
  answer = Kernel.gets().chomp().downcase()
  break unless answer == 'y'
end

