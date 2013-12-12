require 'pry'
class Array
  def my_sort
    self.each_with_index do |val, index|
      next if index==0
      prev = index - 1
      if self[index] < self[prev]
        self[index]=self[prev]
        self[prev]=val
        self[0..prev] = self[0..prev].my_sort
      end
    end
    self
  end
end

=begin

QUICKSORT sudocode
=end

#def partition(A, size)
  #return if size < 2
  #pivot = random_value_from_array
  #L = 0
  #U = size
  #while L < U
    #while A[L] < pivot
      #L++
    #end
    #while A[U] > pivot
      #U--
    #end
    #swap(A[L], A[U])
  #end
  #partition(A, L)
  #partition(A[L+1], size -L -1)
#end
