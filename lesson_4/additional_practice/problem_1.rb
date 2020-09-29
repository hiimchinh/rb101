flintstones = ["Fred", "Barney", "Wilma", "Betty", "Pebbles", "BamBam"]
flintstones_2 = {}
flintstones.each_with_index do |name, index|
  flintstones_2[name] = index
end
p flintstones_2