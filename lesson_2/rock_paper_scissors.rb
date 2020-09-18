VALID_CHOICES = {
  'r' => 'rock',
  'p' => 'paper',
  'sc' => 'scissors',
  'l' => 'lizard',
  'sp' => 'spock'
}
RULES = {
  'rock' => ['lizard', 'scissors'],
  'paper' => ['rock', 'spock'],
  'scissors' => ['paper', 'lizard'],
  'lizard' => ['paper', 'spock'],
  'spock' => ['scissors', 'rock']
}
def prompt(message)
  puts "=> #{message}"
end

def win?(player1, player2)
  RULES[player1].include?(player2)
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
    prompt "Choose one: #{VALID_CHOICES.values.join(', ')} or #{VALID_CHOICES.keys.join(', ')}"
    choice = gets.chomp.downcase
    choice = VALID_CHOICES[choice] if VALID_CHOICES.has_key?(choice)
    break if VALID_CHOICES.has_value?(choice)
    prompt "That's not a valid choice."
  end
  computer_choice = VALID_CHOICES.values.sample

  prompt "You choose: #{choice}; Computer choose: #{computer_choice}"
  display_results(choice, computer_choice)
  prompt "Do you want to play again? (y to play again)"
  answer = gets.chomp.downcase
  break unless answer == 'y'
end

prompt "Thank you for playing. Good bye!"
