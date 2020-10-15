values = %w(1 2 3 4 5 6 7 8 9 10 Jack Queen King Ace)
SUITS = [:diamonds, :hearts, :clubs, :spades]
avaiable_cards = {}
player_cards = []
dealer_cards = []
SUITS.each do |suit|
  avaiable_cards[suit] = values
end

avaiable_suit_cards = avaiable_cards[SUITS.sample]
player_cards << avaiable_suit_cards.delete(avaiable_suit_cards.sample)
player_cards << avaiable_suit_cards.delete(avaiable_suit_cards.sample)
dealer_cards << avaiable_suit_cards.delete(avaiable_suit_cards.sample)
dealer_cards << avaiable_suit_cards.delete(avaiable_suit_cards.sample)

puts "Dealer has #{dealer_cards[0]} and unknown card"
puts "You have: #{player_cards.join(' and ')}"
