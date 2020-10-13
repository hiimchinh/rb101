def staggered_case(string)
  returned_string = ''
  index = 0
  while index < string.size
    current_char = string[index]
    if current_char =~ /[A-Za-z]/
      if index.even?
        returned_string << current_char.upcase
      else
        returned_string << current_char.downcase  
      end
    else
      returned_string << current_char
    end
    index += 1
  end
  returned_string
end


# test cases
puts staggered_case('I Love Launch School!')
puts staggered_case('I Love Launch School!') == 'I LoVe lAuNcH ScHoOl!'
puts staggered_case('ALL_CAPS') == 'AlL_CaPs'
puts staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'