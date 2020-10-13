def staggered_case(string, first_case_upper = true)
  result = ''
  string.chars.each do |char|
    if first_case_upper
      result += char.upcase
    else
      result += char.downcase
    end
    first_case_upper = !first_case_upper
  end
  result
end


# test cases
puts staggered_case('I Love Launch School!') == 'I LoVe lAuNcH ScHoOl!'
puts staggered_case('ALL_CAPS') == 'AlL_CaPs'
puts staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'

puts staggered_case('ignore 77 the 444 numbers', false) == 'iGnOrE 77 tHe 444 nUmBeRs'