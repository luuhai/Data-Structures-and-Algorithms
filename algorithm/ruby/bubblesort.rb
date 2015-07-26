def bubblesort(input_array)
  input_array_length = input_array.length
  if input_array_length > 1
    (0..input_array_length - 2).each do |i|
      if input_array[i] > input_array[i+1]
        input_array[i], input_array[i+1] = input_array[i+1], input_array[i]
      end
    end
    return bubblesort(input_array[0, input_array_length -1]) + Array.new(1, input_array[-1])
  else
    return input_array
  end
end

p bubblesort([3, 2, 3, 4, 5, 1, 9, 10, 7])
