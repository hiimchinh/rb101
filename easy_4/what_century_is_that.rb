def century(num)
  century = (num.to_f / 100).ceil
  ones = century % 10
  tens = (century / 10) % 10
  if tens == 1
    century = "#{century}th"
  else
    if ones == 1
      century = "#{century}st"
    elsif ones == 2
      century = "#{century}nd"
    elsif ones == 3
      century = "#{century}rd"
    else
      century = "#{century}th"
    end
  end
  century
end

=begin
  gets century
  divide century by 100 to get the remain ones and tens
  if the tens are 1 => th
  else 
    if the ones are 1 => st
    elsif the e
=end

# test cases
puts century(2000) == '20th'
puts century(2001) == '21st'
puts century(1965) == '20th'
puts century(256) == '3rd'
puts century(5) == '1st'
puts century(10103) == '102nd'
puts century(1052) == '11th'
puts century(1127) == '12th'
puts century(11201) == '113th'