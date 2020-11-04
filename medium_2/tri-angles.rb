def triangle(angle1, angle2, angle3)
  angles = [angle1, angle2, angle3]
  if angles.any? { |angle| angle <= 0 } || angles.reduce(:+) != 180
    :invalid
  else
    largest_angle = angles.max
    case largest_angle
    when 91..180  then :obtuse
    when 90       then :right
    else               :acute
    end
  end
end

# problem: input is the three angle of a triangle, the output is symbol to show if the triangle is invalid, acute, right or obtuse
# solution: 
# 1. validate the triangle: if any of the angle is <= 0 or if sum of all angle is different than 180 => invalid 
# 2. find the largest angle, if the largest angle > 90 => return obtuse, elseif the largest angle = 90 degree => return right else return acute

# test cases
puts triangle(60, 70, 50) == :acute
puts triangle(30, 90, 60) == :right
puts triangle(120, 50, 10) == :obtuse
puts triangle(0, 90, 90) == :invalid
puts triangle(50, 50, 50) == :invalid