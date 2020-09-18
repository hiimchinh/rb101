VALID_CHOICES = ['rock', 'paper', 'scissors']
def prompt(message)
  puts "=> #{message}"
end

def display_results(user, computer)
  if (user == 'rock' && computer == 'scissors') ||
    (user == 'paper' && computer == 'rock') ||
    (user == 'scissors' && computer == 'paper')
    prompt "You won!"
  elsif (computer == 'rock' && user == 'scissors') ||
    (computer == 'paper' && user == 'rock') ||
    (computer == 'scissors' && user == 'paper')
    prompt "Computer won!"
  else
    prompt "It's a tie!"
  end
end
loop do
  choice = ''
  loop do
    prompt "Choose one: #{VALID_CHOICES.join(', ')}"
    choice = gets.chomp
    break if VALID_CHOICES.include?(choice)
    prompt "That's not a valid choice."
  end
  computer_choice = VALID_CHOICES.sample
  prompt "You choose: #{choice}; Computer choose: #{computer_choice}"
  display_results(choice, computer_choice)
  prompt "Do you want to play again? (y to play again)"
  answer = gets.chomp.downcase
  break unless answer == 'y'
end

prompt "Thank you for playing. Good bye!"