def print_in_box(string)
  string = pad(string)
  border = ''
  empty_covered = ''
  string.size.times do |i|
    border << '-'
    empty_covered << ' '
  end
  puts %Q(
+#{border}+
|#{empty_covered}|
|#{string}|
|#{empty_covered}|
+#{border}+
  )
end

def pad(string)
  " #{string} "
end


#test case
print_in_box('To boldly go where no one has gone before.')
# +--------------------------------------------+
# |                                            |
# | To boldly go where no one has gone before. |
# |                                            |
# +--------------------------------------------+
print_in_box('')
# +--+
# |  |
# |  |
# |  |
# +--+