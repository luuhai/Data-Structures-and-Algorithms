def quicksort(input_array)
  left_array = Array.new
  right_array = Array.new
  input_array_length = input_array.length
  if input_array_length > 1
    pivot_element = input_array[0]
    input_array[1, input_array_length - 1].each do |element|
      if element <= pivot_element
        left_array.push element
      else
        right_array.push element
      end
    end
    return quicksort(left_array) + Array.new(1, pivot_element) + quicksort(right_array)
  else
    return input_array
  end
end

p quicksort([3, 2])
