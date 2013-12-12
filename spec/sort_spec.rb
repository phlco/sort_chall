require 'spec_helper'
require 'pry'
require_relative '../sort'

describe "sort" do
  before(:each) do
    @nums_array = [4, 5, 101, 23, 21, 67, 71]
    @words_array = ["Travis", "Bryan", "Mark"]
  end

  it "organizes an array of numbers from lowest to highest value" do
    ordered_array = sort(@nums_array)
    expect(ordered_array).to eq([4, 5, 21, 23, 67, 71, 101])
  end

  it "organizes an array of strings into alphabetical order" do
    ordered_array = sort(@words_array)
    expect(ordered_array).to eq(["Bryan", "Mark", "Travis"])
  end


end


