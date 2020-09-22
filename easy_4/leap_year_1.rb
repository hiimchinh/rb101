#this solution is more complex than the previous solution

def leap_year?(year)
  is_leap = false
  if year % 4 == 0
    is_leap = true
    if year % 100 == 0
      is_leap = false
      if year % 400 == 0
        is_leap = true
      end
    end
  end
  is_leap
end


# test cases
puts leap_year?(2016) == true
puts leap_year?(2015) == false
puts leap_year?(2100) == false
puts leap_year?(2400) == true
puts leap_year?(240000) == true
puts leap_year?(240001) == false
puts leap_year?(2000) == true
puts leap_year?(1900) == false
puts leap_year?(1752) == true
puts leap_year?(1700) == false
puts leap_year?(1) == false
puts leap_year?(100) == false
puts leap_year?(400) == true
