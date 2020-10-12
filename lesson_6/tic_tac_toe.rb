require 'pry'

WINNING_LINES = [[1, 2, 3], [4, 5, 6], [7, 8, 9]] +
                [[1, 4, 7], [2, 5, 8], [3, 6, 9]] +
                [[1, 5, 9], [3, 5, 7]]

FIRST_PLAYER = 'choose'

def prompt(msg)
  puts "=> #{msg}"
end
INITIAL_MARKER = ' '
PLAYER_MARKER = 'X'
COMPUTER_MARKER = 'O'

# rubocop: disable Metrics/AbcSize

def display_board(brd, player_score, computer_score)
  system 'clear'
  puts "You are X. Computer are 0."
  puts "You won: #{player_score} times. Computer won: #{computer_score} times."
  puts "     |     |"
  puts "  #{brd[1]}  |  #{brd[2]}  |  #{brd[3]}"
  puts "     |     |"
  puts "-----+-----+-----"
  puts "     |     |"
  puts "  #{brd[4]}  |  #{brd[5]}  |  #{brd[6]}"
  puts "     |     |"
  puts "-----+-----+-----"
  puts "     |     |"
  puts "  #{brd[7]}  |  #{brd[8]}  |  #{brd[9]}"
  puts "     |     |"
end

# rubocop: enable Metrics/AbcSize

def initialize_board
  board = {}
  (1..9).each { |num| board[num] = INITIAL_MARKER }
  board
end

def empty_squares(brd)
  brd.keys.select { |num| brd[num] == INITIAL_MARKER }
end

def immediate_win?(brd, marker)
  !!detect_winning_key(brd, marker)
end

def detect_winning_key(brd, marker)
  winning_key = nil
  WINNING_LINES.each do |line|
    values_in_line = brd.values_at(*line)
    if  values_in_line.count(INITIAL_MARKER) == 1 &&
        values_in_line.count(marker) == 2
      winning_key = line[values_in_line.index(INITIAL_MARKER)]
    end
  end
  winning_key
end

def computer_places_pieces!(brd)
  if immediate_win?(brd, COMPUTER_MARKER)
    square = detect_winning_key(brd, COMPUTER_MARKER)
  elsif immediate_win?(brd, PLAYER_MARKER)
    square = detect_winning_key(brd, PLAYER_MARKER)
  elsif brd[5] == INITIAL_MARKER
    square = 5
  else
    square = empty_squares(brd).sample
  end
  brd[square] = COMPUTER_MARKER
end

def player_places_piece!(brd)
  square = ''
  loop do
    prompt "Choose a square (#{joinor(empty_squares(brd))}):"
    square = gets.chomp.to_i
    break if empty_squares(brd).include?(square)
    prompt "Sorry, that's not a valid choice."
  end
  brd[square] = PLAYER_MARKER
end

def board_full?(brd)
  empty_squares(brd).empty?
end

def someone_won?(brd)
  !!detect_winner(brd)
end

def detect_winner(brd)
  WINNING_LINES.each do |line|
    if brd.values_at(*line).count(PLAYER_MARKER) == 3
      return 'Player'
    elsif brd.values_at(*line).count(COMPUTER_MARKER) == 3
      return 'Computer'
    end
  end
  nil
end

def joinor(arr, delimeter = ', ', last_delimeter = 'or')
  return arr.join(" #{last_delimeter} ") if arr.length < 3
  arr[-1] = "#{last_delimeter} #{arr[-1]}"
  arr.join(delimeter)
end

def display_winner(player_score)
  if player_score == 5
    prompt "You won!"
  else
    prompt "Computer won!"
  end
end

first_player = nil
if FIRST_PLAYER == 'choose'
  loop do
    prompt("Choose who play first? (player, computer)")
    first_player = gets.chomp.downcase
    break if %w(player computer).include?(first_player)
    prompt("Invalid first player. Try again.")
  end
else
  first_player = FIRST_PLAYER
end
loop do
  player_score = 0
  computer_score = 0
  loop do
    brd = initialize_board
    loop do
      display_board(brd, player_score, computer_score)
      if first_player == 'player'
        player_places_piece!(brd)
        break if someone_won?(brd) || board_full?(brd)
        computer_places_pieces!(brd)
        break if someone_won?(brd) || board_full?(brd)
      else
        computer_places_pieces!(brd)
        break if someone_won?(brd) || board_full?(brd)
        display_board(brd, player_score, computer_score)
        player_places_piece!(brd)
        break if someone_won?(brd) || board_full?(brd)
      end
    end
    if detect_winner(brd) == 'Player'
      player_score += 1
    elsif detect_winner(brd) == 'Computer'
      computer_score += 1
    end
    break if player_score == 5 || computer_score == 5
  end
  display_winner(player_score)
  prompt "Do you want to play again?(y or n)"
  answer = gets.chomp
  break unless answer.downcase.start_with?('y')
end

prompt("Thank you for playing the game. Goodbye")
