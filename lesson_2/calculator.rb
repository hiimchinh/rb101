require 'yaml'
MESSAGES = YAML.load_file('calculator_messages.yml')
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
              MESSAGES['en']['adding']
            when '2'
              MESSAGES['en']['subtracting']
            when '3'
              MESSAGES['en']['multiplying']
            when '4'
              MESSAGES['en']['dividing']
            end
  operation
end

prompt MESSAGES['en']['welcome']
name = ''
loop do
  name = Kernel.gets.chomp
  if name.empty?
    prompt MESSAGES['en']['empty_name']
  else
    break
  end
end

prompt "Hi #{name}!"

number1 = ''

loop do
  loop do
    prompt MESSAGES['en']['first_number_prompt']
    number1 = Kernel.gets.chomp
    if valid_number? number1
      break
    else
      prompt MESSAGES['en']['invalid_number']
    end
  end
  number2 = ''
  loop do
    prompt MESSAGES['en']['second_number_prompt']
    number2 = Kernel.gets.chomp
    if valid_number? number2
      break
    else
      prompt MESSAGES['en']['invalid_number']
    end
  end

  prompt MESSAGES['en']['operator_prompt']
  operator = ''
  loop do
    operator = Kernel.gets.chomp
    if %w(1 2 3 4).include? operator
      break
    else
      prompt MESSAGES['en']['validate_operator']
    end
  end
  prompt "#{operation_to_message(operator)} #{MESSAGES['en']['calculating']}"
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
  prompt "#{MESSAGES['en']['result']} #{result.round(2)}!"
  prompt MESSAGES['en']['again_prompt']
  answer = Kernel.gets.chomp.downcase
  break unless answer == 'y'
end
