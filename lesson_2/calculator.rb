I18N = {
  en: {
    adding: "Adding",
    subtracting: "Subtracting",
    multiplying: "Multiplying",
    dividing: "Dividing",
    welcome: "Welcome to Calculator! Enter your name:",
    empty_name: "Make sure your name is valid.",
    first_number_prompt: "What's the first number?",
    second_number_prompt: "What's the second number?",
    invalid_number: "Hmm... that doesn't look like a valid number",
    validate_operator: "Must choose 1, 2, 3 or 4.",
    again_prompt: "Do you want to calculate again? (y to do it again)",
    result: "The result is",
    calculating: "the two numbers...",
    operator_prompt: <<-MSG
What operation would you like to perform?
  1) add
  2) subtract
  3) multiply
  4) divide
MSG
  }
}

def prompt(msg)
  Kernel.puts("=> " + msg)
end

def integer?(input)
  Integer(input)
rescue ArgumentError
  false
end

def float?(input)
  Float(input)
rescue ArgumentError
  false
end

def valid_number?(input)
  integer?(input) || float?(input)
end

def operation_to_message(operation)
  operation = case operation
            when '1'
              I18N[:en][:adding]
            when '2'
              I18N[:en][:subtracting]
            when '3'
              I18N[:en][:multiplying]
            when '4'
              I18N[:en][:dividing]
            end
  operation
end

prompt I18N[:en][:welcome]
name = ''
loop do
  name = Kernel.gets.chomp
  if name.empty?
    prompt I18N[:en][:empty_name]
  else
    break
  end
end

prompt "Hi #{name}!"

number1 = ''

loop do
  loop do
    prompt I18N[:en][:first_number_prompt]
    number1 = Kernel.gets.chomp
    if valid_number? number1
      break
    else
      prompt I18N[:en][:invalid_number]
    end
  end
  number2 = ''
  loop do
    prompt I18N[:en][:second_number_prompt]
    number2 = Kernel.gets.chomp
    if valid_number? number2
      break
    else
      prompt I18N[:en][:invalid_number]
    end
  end

  prompt I18N[:en][:operator_prompt]
  operator = ''
  loop do
    operator = Kernel.gets.chomp
    if %w(1 2 3 4).include? operator
      break
    else
      prompt I18N[:en][:validate_operator]
    end
  end
  prompt "#{operation_to_message(operator)} #{I18N[:en][:calculating]}"
  result =  case operator
            when '1'
              number1.to_f + number2.to_f
            when '2'
              number1.to_f - number2.to_f
            when '3'
              number1.to_f * number2.to_f
            when '4'
              number1.to_f / number2.to_f
            end
  prompt "#{I18N[:en][:result]} #{result.round(2)}!"
  prompt I18N[:en][:again_prompt]
  answer = Kernel.gets.chomp.downcase
  break unless answer == 'y'
end
