hsh = {
  'grape' => {type: 'fruit', colors: ['red', 'green'], size: 'small'},
  'carrot' => {type: 'vegetable', colors: ['orange'], size: 'medium'},
  'apple' => {type: 'fruit', colors: ['red', 'green'], size: 'medium'},
  'apricot' => {type: 'fruit', colors: ['orange'], size: 'medium'},
  'marrow' => {type: 'vegetable', colors: ['green'], size: 'large'},
}
expected_arr = [["Red", "Green"], "MEDIUM", ["Red", "Green"], ["Orange"], "LARGE"]
# return colors of the fruits and size in uppercase of the vegetables
result_arr = []
hsh.values.each do |fruit|
  fruit_type = fruit[:type]
  if fruit_type == 'fruit'
    result_arr.push fruit[:colors].map { |color| color.capitalize }
  elsif fruit_type == 'vegetable'
    result_arr.push(fruit[:size].upcase)
  end
end

p result_arr == expected_arr