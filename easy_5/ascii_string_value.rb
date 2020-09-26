def ascii_value(string)
  sum = 0
  i = 0
  loop do
    break if i == string.size
    sum += string[i].ord
    i += 1
  end
  sum
end

#test cases

puts ascii_value('Four score') == 984
puts ascii_value('Launch School') == 1251
puts ascii_value('a') == 97
puts ascii_value('') == 0

# further exploration: mystery method is chr
# if try with a longer string than single character, it only return the first character ordinal number
def compare(char)
  char.ord.chr == char
end

puts compare('s')
puts compare('A')
puts compare('sas')