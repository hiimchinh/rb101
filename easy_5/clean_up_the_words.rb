ALPHABET = ('a'..'z').to_a

def cleanup string
  cleanup_chars = []
  string.chars.each do |char|
    if ALPHABET.include?(char)
      cleanup_chars << char
    else
      cleanup_chars << ' ' unless cleanup_chars.last == ' '
    end
  end
  cleanup_chars.join('')
end

puts cleanup("---what's my +*& line?")
puts cleanup("---what's my +*& line?") == ' what s my line '