VALID_CHOICES = ['rock', 'paper', 'scissors']
def prompt(message)
  puts "=> #{message}"
end

def win?(player1, player2)
  (player1 == 'rock' && player2 == 'scissors') ||
    (player1 == 'paper' && player2 == 'rock') ||
    (player1 == 'scissors' && player2 == 'paper')
end

def display_results(user, computer)
  if win?(user, computer)
    prompt "You won!"
  elsif win?(computer, user)
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
