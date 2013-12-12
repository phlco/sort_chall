require 'spec_helper'
require 'pry'
require_relative '../sort'

describe "number_sort" do
  before(:each) do
    @nums_array = [4, 5, 101, 23, 21, 67, 71]
  end

  it "organizes an array of numbers from lowest to highest value" do
    ordered_array = num_sort(@nums_array)
    expect(ordered_array).to eq([4, 5, 21, 23, 67, 71, 101])
  end

end


