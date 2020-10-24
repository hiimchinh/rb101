def diamond(odd_number)
  all_diamond_row = (1 + odd_number) / 2
  numbers_of_star = 1
  1.upto(odd_number) do |index|
    number_of_spaces = (odd_number - numbers_of_star) / 2
    puts ' ' * number_of_spaces + '*' * numbers_of_star
    
    if index < all_diamond_row
      numbers_of_star += 2
    else
      numbers_of_star -= 2
    end
  end
end

diamond(9)