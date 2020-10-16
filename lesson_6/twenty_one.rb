def busted?(cards)
  total_all_cards(cards) > 21
end

def total_all_cards(cards)
  sum = 0
  number_of_aces = cards.count('Ace')
  cards_without_aces = cards.select { |card| card != 'Ace' }
  cards_without_aces.each do |card|
    if %w(1 2 3 4 5 6 7 8 9 10).include?(card)
      sum += card.to_i
    else
      sum += 10
    end
  end
  return sum if sum > 21
  number_of_aces.times do |_|
    if sum + 11 > 21
      sum += 1
    else
      sum += 11
    end
  end
  sum
end

VALUES = %w(1 2 3 4 5 6 7 8 9 10 Jack Queen King Ace)
SUITS = [:diamonds, :hearts, :clubs, :spades]

def init_deck
  deck = {}
  SUITS.each do |suit|
    deck[suit] = VALUES
  end
  deck
end

def get_random_suit(deck)
  deck[SUITS.sample]
end

def pick_a_random_card(cards)
  cards.delete(cards.sample)
end

def deal_a_card(deck)
  avaiable_cards = get_random_suit(deck)
  pick_a_random_card(avaiable_cards)
end

def prompt_player
  answer = nil
  loop do
    puts "Hit or stay?"
    answer = gets.chomp.downcase
    break if ['hit', 'stay'].include?(answer)
    puts "Invalid answer. Try again."
  end
  answer
end

def who_win?(player_cards, dealer_cards)
  player_sum = total_all_cards(player_cards)
  dealer_sum = total_all_cards(dealer_cards)
  if player_sum > dealer_sum
    'player'
  elsif player_sum < dealer_sum
    'dealer'
  else
    'tie'
  end
end

def display_winner(result, player_cards, dealer_cards)
  player_sum = total_all_cards(player_cards)
  dealer_sum = total_all_cards(dealer_cards)
  case result
  when 'player'
    puts "Player win! Player: #{player_sum}, dealer: #{dealer_sum} "
  when 'dealer'
    puts "Dealer win! Player: #{player_sum}, dealer: #{dealer_sum} "
  else
    puts "It's a tie Player: #{player_sum}, dealer: #{dealer_sum} "
  end
end

# start the game

deck = init_deck
player_cards = []
dealer_cards = []
2.times { |_| player_cards << deal_a_card(deck) }
2.times { |_| dealer_cards << deal_a_card(deck) }

loop do
  loop do
    puts "Dealer has #{dealer_cards[0]} and unknown card"
    puts "You have: #{player_cards.join(' and ')}. Total is: (#{total_all_cards(player_cards)})"
    answer = prompt_player
    break if answer == 'stay'
    player_cards << deal_a_card(deck)
    break if busted?(player_cards)
  end
  
  if busted?(player_cards)
    puts "You are busted!"
    break
  end

  loop do
    dealer_cards << deal_a_card(deck)
    break if busted?(dealer_cards) || total_all_cards(dealer_cards) >= 17
  end

  if busted?(dealer_cards)
    puts "You win. Dealer has busted!"
    break
  end
  
  result = who_win?(player_cards, dealer_cards)
  display_winner(result, player_cards, dealer_cards)
  break
end

