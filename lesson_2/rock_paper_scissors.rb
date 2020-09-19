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

def get_choice
  choice = ''
  loop do
    prompt "Choose one: #{VALID_CHOICES.values.join(', ')}
              (or #{VALID_CHOICES.keys.join(', ')} respectively)"
    choice = gets.chomp.downcase
    choice = VALID_CHOICES[choice] if VALID_CHOICES.key?(choice)
    break if VALID_CHOICES.value?(choice)
    prompt "That's not a valid choice."
  end
  choice
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
  player_score = 0
  computer_score = 0

  until player_score == 5 || computer_score == 5
    choice = get_choice
    computer_choice = VALID_CHOICES.values.sample
    prompt "You choose: #{choice}; Computer choose: #{computer_choice}"
    display_results(choice, computer_choice)
    player_score += 1 if win?(choice, computer_choice)
    computer_score += 1 if win?(computer_choice, choice)
  end
  winner = player_score == 5 ? 'You are' : 'Computer is'
  prompt "Matches over. #{winner} the grand winner."
  prompt "Do you want to play again? (y to play again)"
  answer = gets.chomp.downcase
  break unless answer == 'y'
end

prompt "Thank you for playing. Good bye!"
