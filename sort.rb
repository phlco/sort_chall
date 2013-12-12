require 'pry'

numbers = []
20.times{numbers << rand(1..10000)}



# unsorted = [5, 3, 4, 1, 2]

# def calculate_midpoint(first, last)
# 	(last - first)/2
# end

def compare(num, sorted_array, first_index, midpoint_index, last_index)
	if num < sorted_array.first
		sorted_array.unshift(num)

	elsif num > sorted_array.last
		sorted_array.push(num)

	elsif num > sorted_array[midpoint_index]
		last = sorted_array.length
		next_index = midpoint_index + 1
		if num < sorted_array[next_index]
			return sorted_array.insert(next_index, num)
		else
			# recalculate first as midpoint
			new_first_index = midpoint_index
			# recalculate midpoint
			new_midpoint_index = (last - new_first_index)/2
			# keep last
			compare(num, sorted_array, new_first_index, new_midpoint_index, last)
		end

	else #less than midpoint
		first_value = sorted_array.first
		next_index = midpoint_index - 1
		if num > sorted_array[next_index]
			return sorted_array.insert(midpoint_index, num)
		else
			# new last
			new_last_index = midpoint_index
			# recalculate midpoint
			new_midpoint_index = new_last_index/2
			# keep first
			compare(num, sorted_array, 0, new_midpoint_index, new_last_index)
		end
	end
	sorted_array
end

def sort(unsorted)
	sorted = []
	unsorted.each_with_index do |num, index|
		if index == 0
			sorted << num
		elsif sorted.length == 1
			if num > sorted.first
				sorted << num
				next
			else
				sorted.unshift(num)
				next
			end
		else
			last_index = sorted.length
			midpoint_index = (last_index/2)
			compare(num, sorted, 0, midpoint_index, last_index)
		end
	end
	sorted
end



# 		first = 0
# 		last = sorted.length
# 		midpoint = calculate_midpoint(first, last)
# 		if num == midpoint
# 			sorted.insert(midpoint, num)
# 		elsif num > midpoint
# 			first = midpoint
# 			midpoint = calculate_midpoint(first, last)
# 			# now see if it can be inserted
# 		else
# 			last = midpoint
# 			midpoint = calculate_midpoint(first, last)
# 			# 
# 		end
# 	end
# end
