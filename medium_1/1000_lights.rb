def light(n)
  lights = init_lights(n)
  1.upto(n) do |i|
    index = i
    while index < n
      lights[index] = !lights[index]
      index += i
    end
  end
  on_lights(lights)
end

def init_lights(number_of_lights)
  lights = {}
  1.upto(number_of_lights) do |index|
    lights[index] = false
  end
  lights
end

def on_lights(lights)
  lights.select { |index, state| state  }.keys
end

p light(5)
p light(10)
puts light(1000) == [1, 4, 9, 16, 25, 36, 49, 64, 81, 100, 121, 144, 169, 196, 225, 256, 289, 324, 361, 400, 441, 484, 529, 576, 625, 676, 729, 784, 841, 900, 961]