vehicles = [
  'car', 'car', 'truck', 'car', 'SUV', 'truck',
  'motorcycle', 'motorcycle', 'car', 'truck', 'suv'
]

def count_occurrences(objects)
  occurrences = {}
  objects.each do |object|
    if occurrences.has_key?(object)
      occurrences[object] += 1
    else
      occurrences[object] = 1
    end
  end
  occurrences.each do |key, value|
    puts "#{key} => #{value}"
  end
end

count_occurrences(vehicles)
