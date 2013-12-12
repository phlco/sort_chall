# def matt_sort(item)
  # sort_drawer = [] #this is for the merge
  # you need to work in a while loop for a merge sort
    # as a loop spin off each place in the array to be sorted into the new array
    # check the length of the array to make sure they're equal

  #get length of item to sort
#   count = item.count

#   # begin a new while loop
#   i = 0

#   while i < count do
#   # check the first place against the second place to see which is bigger
#     if item[i] > item[i+=1]
#     # if the first place is bigger then move its place to the second spot and remove the first
#       item[i].insert_at[i+=1]
#       item.delete_at[i]
#     # else leave it alone
#     else
#       i+=1
#     end
#   end
#   # return the original array.
#   return item

#   # continue until it has nothing on the right to compare it to.

# end



def stack_overflow_sort(list)
  new_list = list
  # this is a tiny list that needs no sorting
  return list if list.size <= 1 # already sorted
  # sets a default for the while loop
  swapped = true
  while swapped do
    # sets the list to false to see if it's done
    swapped = false
    # sets this to recursively work out the sort for any length
    0.upto(new_list.length-2) do |i|
      if new_list[i] > new_list[i+1]
        new_list[i], new_list[i+1] = new_list[i+1], new_list[i] # swap values
        swapped = true
      end
    end
  end

  new_list
end