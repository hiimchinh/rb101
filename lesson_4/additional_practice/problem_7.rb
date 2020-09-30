statement = "The Flintstones Rock"
result = {}
characters = ('A'..'Z').to_a + ('a'..'z').to_a
characters.each do |character|
  character_frequency = statement.count(character)
  result[character] = character_frequency if character_frequency > 0
end

p result
=begin
algorithm
1. create an array of char from A-Z and then a-z
2. loop through each character
3. count how many character the string has
4. if it's > 0 => add character as key and numbers of character as value to the hash
=end