require 'yaml'
MESSAGES = YAML.load_file('calculator_messages.yml')
def prompt(msg)
  puts("=> " + msg)
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
              MESSAGES[LANGUAGE]['adding']
            when '2'
              MESSAGES[LANGUAGE]['subtracting']
            when '3'
              MESSAGES[LANGUAGE]['multiplying']
            when '4'
              MESSAGES[LANGUAGE]['dividing']
            end
  operation
end

loop do
  prompt MESSAGES['choose_language']
  LANGUAGE = gets.chomp.downcase
  allowed_languages = ['vi', 'en']
  if allowed_languages.include?(LANGUAGE)
    break
  else
    prompt MESSAGES['invalid_language']
  end
end

prompt MESSAGES[LANGUAGE]['welcome']
name = ''
loop do
  name = gets.chomp
  if name.empty?
    prompt MESSAGES[LANGUAGE]['empty_name']
  else
    break
  end
end

prompt "#{MESSAGES[LANGUAGE]['hi']} #{name}!"

number1 = ''

loop do
  loop do
    prompt MESSAGES[LANGUAGE]['first_number_prompt']
    number1 = gets.chomp
    if valid_number? number1
      break
    else
      prompt MESSAGES[LANGUAGE]['invalid_number']
    end
  end
  number2 = ''
  loop do
    prompt MESSAGES[LANGUAGE]['second_number_prompt']
    number2 = gets.chomp
    if valid_number? number2
      break
    else
      prompt MESSAGES[LANGUAGE]['invalid_number']
    end
  end

  prompt MESSAGES[LANGUAGE]['operator_prompt']
  operator = ''
  loop do
    operator = gets.chomp
    if %w(1 2 3 4).include? operator
      break
    else
      prompt MESSAGES[LANGUAGE]['validate_operator']
    end
  end
  prompt "#{operation_to_message(operator)} #{MESSAGES[LANGUAGE]['calculating']}"
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
  prompt "#{MESSAGES[LANGUAGE]['result']} #{result.round(2)}!"
  prompt MESSAGES[LANGUAGE]['again_prompt']
  answer = gets.chomp.downcase
  break unless answer == 'y'
end
