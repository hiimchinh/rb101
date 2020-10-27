BLOCKS = %w(BO XK DQ CP NA GT RE FS JW HU VI LY ZM).freeze

def block_word?(word)
  word.upcase!
  BLOCKS.none? { |block| word.count(block) >= 2 }
end



# test cases
puts block_word?('BATCH') == true
puts block_word?('BUTCH') == false
puts block_word?('jest') == true