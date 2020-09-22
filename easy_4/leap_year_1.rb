def leap_year?(year)
  if (divisible?(year, 4) &&
      !divisible?(year, 100)) ||
    (divisible?(year, 100) &&
      divisible?(year, 400))
    true
  else
    false
  end
end

def divisible?(divident, divisor)
  divident % divisor == 0
end

# if divided by 4 and not divided by 100 or divided by 100 and 400 => leap year

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
