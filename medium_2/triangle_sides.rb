def triangle(side1, side2, side3)
  triangle_arr = [side1, side2, side3].sort
  unless valid_triangle?(triangle_arr)
    return :invalid
  end
  if side1 == side2 || side2 == side3
    if side1 == side3
      return :equilateral
    else
      return :isosceles
    end
  else
    return :scalene
  end
end

def valid_triangle?(triangle_arr)
  is_valid = true
  index = 0
  loop do
    unless triangle_arr[index] > 0
      is_valid = false
    end
    index += 1
    break if index == triangle_arr.size
  end
  unless triangle_arr[0] + triangle_arr[1] > triangle_arr[2]
    is_valid = false
  end
  is_valid
end

# test cases
puts triangle(3, 3, 3) == :equilateral
puts triangle(3, 3, 1.5) == :isosceles
puts triangle(3, 4, 5) == :scalene
puts triangle(0, 3, 3) == :invalid
puts triangle(3, 1, 1) == :invalid