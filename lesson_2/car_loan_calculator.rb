def prompt(mes)
  puts '>> ' + mes
end

def float?(input)
  Float(input)
rescue ArgumentError
  false
end

def integer?(input)
  Integer(input)
rescue ArgumentError
  false
end

def number?(input)
  float?(input) || integer?(input)
end

def positive_number?(input)
  number?(input) && input.to_f > 0
endf

loop do
  loan_amount = ''
  loop do
    prompt "Please input the loan amount:"
    loan_amount = gets.chomp
    break if positive_number?(loan_amount)
    prompt 'You have to input a float or an integer that is positive.'
  end

  annual_percentage_rate = ''

  loop do
    prompt 'Please input the annual percentage rate (%):'
    annual_percentage_rate = gets.chomp
    break if positive_number?(annual_percentage_rate)
    prompt 'You have to input a float or an integer that is positive'
  end

  loan_duration_in_months = ''
  loop do
    prompt 'Please input the loan duration (months):'
    loan_duration_in_months = gets.chomp
    break if integer?(loan_duration_in_months) && loan_duration_in_months.to_i > 0
    prompt 'You have to input a positive integer'
  end

  monthly_interest_rate = annual_percentage_rate.to_f / 12 / 100
  loan_amount = loan_amount.to_f
  loan_duration_in_months = loan_duration_in_months.to_i

  monthly_payment = loan_amount * (monthly_interest_rate / (1 - (1 + monthly_interest_rate) ** (-loan_duration_in_months)))

  prompt "Your monthly payment is: #{monthly_payment.round(2)}"
  prompt 'Do you want to do it again? (y to do it again)'
  answer = gets.chomp.downcase
  break unless answer == 'y'
end
