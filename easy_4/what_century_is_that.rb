def century(num)
  century = (num.to_f / 100).ceil
  century.to_s + century_suffix(century)
end

def century_suffix(century)
  return 'th' if [11, 12, 13].include?(century % 100)
  last_digit = century % 10
  case last_digit
  when 1 then 'st'
  when 2 then 'nd'
  when 3 then 'rd'
  else 'th'
  end
end

=begin
  gets century
  if remainder of century to 100 is 11, 12 or 13 => return th
  case last digit = remainder of century to 10
  when remainder == 1 then st 
  when remainder == 2 then nd 
  when remainder == 3 then rd 
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