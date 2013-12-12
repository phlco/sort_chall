def sort(array)
  array.each_with_index do |num, index|
    # sets
    if array[index+1] == nil then
      break
    end

    if num > array[index+1]
      smaller_number = array[index+1]
      # this puts the latter number in the first position
      array[index] = smaller_number
      array[index + 1] = num
      sort(array)
    end
  end

  array
end

