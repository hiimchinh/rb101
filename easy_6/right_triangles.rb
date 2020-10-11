def triangle(numbers)
  numbers.times do |col|
    numbers_of_stars = col + 1
    numbers_of_spaces = numbers - numbers_of_stars
    string = ''
    numbers_of_spaces.times { |n| string << ' ' }
    numbers_of_stars.times { |n| string << '*' }
    puts string
    numbers_of_stars += 1
    numbers_of_spaces -= 1
  end
end

# problem: input is a positive integer, display a right triangle whoses sides each have n stars
# the hypotenuse of the triangle should have one end at the lower-left and the other end
# at the upper-right

#algorithm:
# iterate numbers of input as cols
# first col have numbers of space is input - 1 and 1 star
# 
# first col have all spaces, then reduce 1 and 

# test cases
triangle(5)

triangle(9)