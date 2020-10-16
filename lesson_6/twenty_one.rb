def prompt(msg)
  puts "=> #{msg}"
end

def busted?(cards)
  total(cards) > 21
end

def total(cards)
  sum = 0
  number_of_aces = cards.count('Ace')
  cards_without_aces = cards.select { |card| card != 'Ace' }
  cards_without_aces.each do |card|
    sum += %w(1 2 3 4 5 6 7 8 9 10).include?(card) ? card.to_i : 10
  end
  return sum if sum > 21
  number_of_aces.times do |_|
    sum += sum > 10 ? 1 : 10
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
    puts "(h)it or (s)tay?"
    answer = gets.chomp.downcase
    break if ['h', 's'].include?(answer)
    puts "Invalid answer. Only allow 'h' or 's'."
  end
  answer
end

def who_win?(player_cards, dealer_cards)
  player_sum = total(player_cards)
  dealer_sum = total(dealer_cards)
  if player_sum > dealer_sum
    'player'
  elsif player_sum < dealer_sum
    'dealer'
  else
    'tie'
  end
end

def display_winner(result, player_cards, dealer_cards)
  player_sum = total(player_cards)
  dealer_sum = total(dealer_cards)
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
2.times do
  player_cards << deal_a_card(deck)
  dealer_cards << deal_a_card(deck)
end


loop do
  loop do
    prompt "Dealer has #{dealer_cards[0]} and unknown card"
    prompt "You have: #{player_cards.join(' and ')}.
    Total is: (#{total(player_cards)})"
    answer = prompt_player
    break if answer == 's'
    player_cards << deal_a_card(deck)
    break if busted?(player_cards)
  end

  if busted?(player_cards)
    prompt "You are busted!"
    break
  end

  loop do
    dealer_cards << deal_a_card(deck)
    break if busted?(dealer_cards) || total(dealer_cards) >= 17
  end

  if busted?(dealer_cards)
    prompt "You win. Dealer has busted!"
    break
  end

  result = who_win?(player_cards, dealer_cards)
  display_winner(result, player_cards, dealer_cards)
  break
end
