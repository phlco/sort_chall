def bubble_sort(arr)
  sorted = false
  until sorted
    sorted = true
    (arr.count - 1).times do |i|
      if arr[i] > arr[i + 1]
        arr[i], arr[i + 1] = arr[i + 1], arr[i]
        sorted = false
      end
    end
  end

  arr
end


def insert_sort(arr)
  i = 1
  while i < arr.length
    y = i
    until y-1 < 0
      if arr[y] < arr[y-1]
        arr[y], arr[y - 1] = arr[y - 1], arr[y]
      end
      y = y-1
    end
    i = i +1
  end
  return arr
end

