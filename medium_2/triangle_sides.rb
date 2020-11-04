def triangle(side1, side2, side3)
  sides = [side1, side2, side3]
  largest_side = sides.max

  if 2 * largest_side > sides.reduce(:+) || sides.any? { |side| side <= 0 }
    :invalid
  elsif side1 == side2 || side2 == side3
    if side1 == side3
      :equilateral
    else
      :isosceles
    end
  else
    :scalene
  end
end

# solution: 
# find largest side of the triangle
# if largest side > sum of the other two side or anyside side is not bigger than 0 => return :invalid
# if first side equals second side or second side equals third side continue down line else return :scalene
# if first side equals third side => :equilateral
# else first side not equals third side => :isosceles


# test cases
puts triangle(3, 3, 3) == :equilateral
puts triangle(3, 3, 1.5) == :isosceles
puts triangle(3, 4, 5) == :scalene
puts triangle(0, 3, 3) == :invalid
puts triangle(3, 1, 1) == :invalid
puts triangle(3, 2, -1) == :invalid