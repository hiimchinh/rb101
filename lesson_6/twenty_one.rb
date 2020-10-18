require 'pry'

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

def total(cards)
  sum = 0
  cards_values = get_values(cards)
  cards_values.each do |card|
    sum += if card == 'A'
      11
    else
      card.to_i == 0 ? 10 : card.to_i
    end
  end
  number_of_aces = cards_values.select{|card| card == 'A'}.length.times do |card|
    sum -= 10 if sum > 21
  end
  sum
end

def busted?(cards)
  total(cards) > 21
end

def display_winner(total_player_cards, total_dealer_cards)
  if total_player_cards > total_dealer_cards
    prompt "The player wins!"
  elsif total_dealer_cards > total_player_cards
    prompt "The dealer wins!"
  else
    prompt "It's a tie"
  end
end

# start the game
prompt "Welcome to the twenty one game!!!"
loop do
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
    prompt "Player total card is: #{total(player_cards)}"
    answer = prompt_player
    if answer == 'h'
      player_cards << deck.pop
    end
    break if answer == 's' || busted?(player_cards)
  end

  if busted?(player_cards)
    prompt "Player total is: #{total(player_cards)} "
    prompt "Dealer win. You are busted"
    play_again? ? next : break
  else
    prompt "You choose to stay"
    prompt "Dealer turn"
  end
  loop do
    dealer_cards << deck.pop
    break if total(dealer_cards) >= 17 || busted?(dealer_cards)
  end

  if busted?(dealer_cards)
    prompt "Dealer total is: #{total(dealer_cards)} "
    prompt "You win. Dealer has busted"
    play_again? ? next : break
  else
    total_player_cards = total(player_cards)
    total_dealer_cards = total(dealer_cards)
    prompt "Player total is: #{total_player_cards} "
    prompt "Dealer total is: #{total_dealer_cards} "
    display_winner(total_player_cards, total_dealer_cards)
    break unless play_again?
  end
end

prompt "Thank you for playing the game!"