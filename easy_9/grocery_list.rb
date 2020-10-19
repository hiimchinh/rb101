def buy_fruit(fruits)
  fruits_list = []
  fruits.each do |fruit|
    fruit_name, quantity = fruit
    quantity.times { fruits_list << fruit_name }
  end
  fruits_list
end

# test case
puts buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]]) ==
  ["apples", "apples", "apples", "orange", "bananas","bananas"]
