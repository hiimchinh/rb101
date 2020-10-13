print "Enter a noun: "
noun = gets.chomp
print "Enter a verb: "
verb = gets.chomp
print "Enter an adjective: "
adjective = gets.chomp
print "Enter an adverb: "
adverb = gets.chomp

puts 
sentence_1 = "Have you ever #{verb} in your #{adjective} #{noun} #{adverb}? Is that fun?"
sentence_2 = "The #{adjective} #{noun} wants to #{verb} #{adverb}!"
sentence_3 = " One day, my #{adverb} #{adjective} dog will #{verb} to #{noun}."
puts [sentence_1, sentence_2, sentence_3].sample