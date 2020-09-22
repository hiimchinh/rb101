ADOPTED_YEAR = 1752

def leap_year_julian_calendar?(year)
  year % 4 == 0
end

def leap_year_gregorian_calendar?(year)
  if year % 400 == 0
    true
  elsif year % 100 == 0
    false
  else
    leap_year_julian_calendar?(year)
  end
end

def leap_year?(year)
  if year >= ADOPTED_YEAR
    leap_year_gregorian_calendar?(year)
  else
    leap_year_julian_calendar?(year)
  end
end

### test cases

puts leap_year?(2016) == true
puts leap_year?(2015) == false
puts leap_year?(2100) == false
puts leap_year?(2400) == true
puts leap_year?(240000) == true
puts leap_year?(240001) == false
puts leap_year?(2000) == true
puts leap_year?(1900) == false
puts leap_year?(1752) == true
puts leap_year?(1700) == true
puts leap_year?(1) == false
puts leap_year?(100) == true
puts leap_year?(400) == true