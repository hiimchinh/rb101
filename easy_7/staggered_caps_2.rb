def staggered_case(string, check_only_alphabetic_char = true)
  result = ''
  need_upper = true
  string.chars.each do |char|
    if !check_only_alphabetic_char || char =~ /[A-Za-z]/
      if need_upper
        result += char.upcase
      else
        result += char.downcase
      end
      need_upper = !need_upper
    else
      result += char
    end
  end
  result
end

#test cases

puts staggered_case('I Love Launch School!') == 'I lOvE lAuNcH sChOoL!'
puts staggered_case('ALL CAPS') == 'AlL cApS'
puts staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 nUmBeRs'
puts staggered_case('ignore 77 the 444 numbers', false) == 'IgNoRe 77 ThE 444 NuMbErS'