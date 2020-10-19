def swap_name(name)
  name.split.reverse.join(', ')
end

# test case
puts swap_name('Joe Roberts') == 'Roberts, Joe'
