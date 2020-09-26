# PROBLEM:

# Given a string, write a method `palindrome_substrings` which returns
# all the substrings from a given string which are palindromes. Consider
# palindrome words case sensitive.

# Test cases:

# palindrome_substrings("supercalifragilisticexpialidocious") == ["ili"]
# palindrome_substrings("abcddcbA") == ["bcddcb", "cddc", "dd"]
# palindrome_substrings("palindrome") == []
# palindrome_substrings("") == []

=begin
 input: string
 output: array 
 rules: 
    Explicit requirements:
    - every substrings which are palindromes are return
    - palindrome words are case sensitive
    Implicit requirements:
    - return empty array if no palindrome found
    - return empty array if string is empty

  
 algorithm:
  - initialize result array to contain the returned value
  - create substrings_array that contains all substrings from the string
  - iterate through the substrings_arr
  - check if a substring is a palindrome => push to the result array
  - return the result array

=end