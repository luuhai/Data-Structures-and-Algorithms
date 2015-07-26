def insertionsort(input_array)
  input_array_length = input_array.length
  if input_array_length > 1
    sorted_part = insertionsort(input_array[0, input_array_length - 1])
    sorted_part_length = sorted_part.length
    (0..sorted_part_length - 1).reverse_each do |i|
      if sorted_part[i] > input_array[-1]
        sorted_part[i+1] = sorted_part[i]
        sorted_part[i] = input_array[-1]
      else
        sorted_part[i+1] = input_array[-1]
        break
      end
    end
    sorted_part_length = sorted_part.length
    return sorted_part
  else
    return input_array
  end
end

p insertionsort([3, 2, 3, 4, 5, 1, 9, 10, 7])
