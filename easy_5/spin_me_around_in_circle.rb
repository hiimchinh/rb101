def spin_me(str)
  puts str.object_id
  str.split.each do |word|
    word.reverse!
  end.join(" ")
end

a = spin_me("hello world") # "olleh dlrow"
puts a.object_id