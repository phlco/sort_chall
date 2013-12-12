require 'spec_helper'
require_relative '../sort'



describe "#sort" do
	
	it "rearranges unsorted to 1, 2, 3, 4, 5" do
		unsorted = [5, 3, 4, 1, 2]
		sorted = sort(unsorted)
		expect(sorted).to eq([1, 2, 3, 4, 5])
	end

	it "orders negative numbers" do
		unsorted = [500, 40, 32, -1]
		sorted = sort(unsorted)
		expect(sorted.max).to eq(sorted.last)
	end

	# it "orders a random set of numbers" do
	# 	numbers = []
	# 	20.times{numbers << rand(1..10000)}
	# 	sorted = sort(numbers)
	# 	binding.pry
	# 	expect(sorted.max).to eq(sorted.last)
	# end

	it "orders duplicates properly" do
		unsorted = [30, 8, 9, 2, 8, 1]
		sorted = sort(unsorted)
		expect(sorted).to eq([1, 2, 8, 8, 9, 30])
	end

end