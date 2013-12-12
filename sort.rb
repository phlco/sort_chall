def jackie_sort(arr)
  count = arr.length
  until count <= 1
    count = arr.length
    arr.each_with_index.map do |el, i|
      second_el = arr[i+1]
      if second_el && el > second_el
        arr[i+1], arr[i] = arr[i], arr[i+1]
        count = count + 1
      else count = count - 1 end
    end
  end
  return arr
end


# def jackie_sort(arr)
#   count = arr.length
#   until count <= 1
#     count = arr.length
#     arr.each_with_index.map do |el, i|
#       second_el = arr[i+1]
#       if second_el
#         if el > second_el
#           arr[i+1], arr[i] = arr[i], arr[i+1]
#           count = count + 1
#         else
#           count = count - 1
#         end
#       end
#     end
#   end
#   return arr
# end
