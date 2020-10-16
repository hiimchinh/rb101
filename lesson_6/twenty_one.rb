def is_busted?(cards)
  true || total_all_cards(cards) > 21
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

deck = init_deck
player_cards = []
dealer_cards = []
2.times { |_| player_cards << deal_a_card(deck) }
2.times { |_| dealer_cards << deal_a_card(deck) }

puts "Dealer has #{dealer_cards[0]} and unknown card"
puts "You have: #{player_cards.join(' and ')}"
loop do
  answer = nil
  loop do
    puts "Hit or stay?"
    answer = gets.chomp.downcase
    puts "answer is: #{player_cards.inspect} "
    break if ['hit', 'stay'].include?(answer)
    puts "Invalid answer. Try again."
  end
break if is_busted?(player_cards)
end
puts "Player is busted "
