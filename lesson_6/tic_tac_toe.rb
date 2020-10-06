
def prompt(msg)
  puts "=> #{msg}"
end
INITIAL_MARKER = ' '
PLAYER_MARKER = 'X'
COMPUTER_MARKER = 'O'

# rubocop: disable Metrics/AbcSize

def display_board(brd)
  system 'clear'
  puts "You are X. Computer are 0."
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

def computer_places_pieces!(brd)
  square = empty_squares(brd).sample
  brd[square] = COMPUTER_MARKER
end

def player_places_piece!(brd)
  square = ''
  loop do
    prompt "Choose a square (#{empty_squares(brd).join(', ')}):"
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
  winning_lines = [[1, 2, 3], [4, 5, 6], [7, 8, 9]] +
                  [[1, 4, 7], [2, 5, 8], [3, 6, 9]] +
                  [[1, 5, 9], [3, 5, 7]]
  winning_lines.each do |line|
    if brd.values_at(*line).count(PLAYER_MARKER) == 3
      return 'Player'
    elsif brd.values_at(*line).count(COMPUTER_MARKER) == 3
      return 'Computer'
    end
  end
  nil
end

def joinor(arr, delimeter = ', ', last_delimeter = ' or ')
  return arr.join(' or ') if arr.length == 2
end

p joinor([1, 2, 3]) 
puts joinor([1, 2]) == "1 or 2"
puts joinor([1, 2, 3])                 == "1, 2, or 3"
puts joinor([1, 2, 3], '; ')           == "1; 2; or 3"
puts joinor([1, 2, 3], ', ', 'and')    == "1, 2, and 3"

# loop do
#   board = initialize_board
#   loop do
#     display_board(board)
#     player_places_piece!(board)
#     break if someone_won?(board) || board_full?(board)
#     computer_places_pieces!(board)
#     break if someone_won?(board) || board_full?(board)
#   end
#   display_board(board)

#   if someone_won?(board)
#     prompt "#{detect_winner(board)} won!"
#   else
#     prompt "It's a tie"
#   end
#   prompt "Do you want to play again?(y or n)"
#   answer = gets.chomp
#   break unless answer.downcase.start_with?('y')
# end

prompt("Thank you for playing the game. Goodbye")
