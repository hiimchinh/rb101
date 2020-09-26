

DAY_TO_MINUTES = 1440
def time_of_day(number)
  number %= DAY_TO_MINUTES
  hours, minutes = number.divmod(60)
  format('%02d:%02d', hours, minutes)
end

#test cases
puts time_of_day(0) == "00:00"
puts time_of_day(-3) == "23:57"
puts time_of_day(35) == "00:35"
puts time_of_day(-1437) == "00:03"
puts time_of_day(3000) == "02:00"
puts time_of_day(800) == "13:20"
puts time_of_day(-4231) == "01:29"