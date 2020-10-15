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
