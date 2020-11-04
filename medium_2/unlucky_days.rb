def friday_13th(year)
  unlucky_days = 0
  1.upto(12) do |month|
    the_13th_day = Time.new(year, month, 13)
    unlucky_days += 1 if the_13th_day.friday?
  end
  unlucky_days
end


=begin
problem: 
  + input: int of the year > 1752
  + output: int of number of friday the 13th of that year

  solution: 
  init a variable contain the number of unlucky days equals 0
  create a new date of that year, january and day 13th.
  loop until the year of the year
  if that day is friday => unlucky days += 1

    return unlucky days
=end

# test cases
puts friday_13th(2015) == 3
puts friday_13th(1986) == 1
puts friday_13th(2019) == 2