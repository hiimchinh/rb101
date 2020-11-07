def bubble_sort!(arr)
  loop do
    no_swaps = true
    index = 0
    loop do
      if arr[index] > arr[index + 1]
        current_index_value = arr[index]
        arr[index] = arr[index + 1]
        arr[index + 1] = current_index_value
        no_swaps = false
      end
      index += 1
      break unless index < arr.length - 1
    end
    break if no_swaps
  end
  arr
end

# solution: create an loop that loop through the arr, this loop won't stop until there're no swaps left to be done
# inside the loop, create another loop from the first index to the last index - 1
# within the inner loop method invocation, create a condition check if the next index is bigger than the current index
# if the next index is bigger => swap the value of two index. and reassigned variable no swaps to false


# test cases
array = [5, 3]
bubble_sort!(array)
puts array == [3, 5]

array = [6, 2, 7, 1, 4]
bubble_sort!(array)
p array == [1, 2, 4, 6, 7]

array = %w(Sue Pete Alice Tyler Rachel Kim Bonnie)
bubble_sort!(array)
puts array == %w(Alice Bonnie Kim Pete Rachel Sue Tyler)