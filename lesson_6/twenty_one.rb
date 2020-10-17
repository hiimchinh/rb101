def prompt(msg)
  puts "=> #{msg}"
end

SUITS = ['H', 'D', 'S', 'C']
VALUES = ['2', '3', '4', '5', '6', '7', '8', '9', '10', 'J', 'Q', 'K', 'A']

def init_deck
  SUITS.product(VALUES).shuffle
end

def get_values(cards)
  cards.map { |card| card[1]  }
end

def prompt_player
  answer = nil
  loop do
    puts "(h)it or (s)tay?"
    answer = gets.chomp.downcase
    break if ['h', 's'].include?(answer)
    puts "Invalid answer. Only allow 'h' or 's'."
  end
  answer
end

def play_again?
  answer = nil
  loop do
    prompt "Do you want to play again? (y)es or (n)o?"
    answer = gets.chomp.downcase
    break if ['y', 'n'].include?(answer)
    prompt "You have to choose 'y' or 'n'. Try again."
  end
  answer == 'y'
end

# start the game
prompt "Welcome to the twenty one game!!!"
deck = init_deck
player_cards = []
dealer_cards = []
2.times do
  player_cards << deck.pop
  dealer_cards << deck.pop
end

loop do
player_cards_values = get_values(player_cards)
dealer_cards_values = get_values(dealer_cards)
prompt "Dealer has #{dealer_cards_values[0]} and an unknown card"
prompt "You have: #{player_cards_values.join(' and ')}."
  answer = prompt_player
  if answer == 'h'
    player_cards << deck.pop
  end
  break if answer == 's' || busted?(player_cards)
end

if busted?(player_cards)
  prompt "You lose."
  p player_cards
  # play_again?
else
  prompt "You choose to stay"
  prompt "Dealer turn"
end