require 'spec_helper'
require_relative '../sort'

describe "bubble_sort" do
  it "sorts the array" do
    array = [2,5,4,7,1,3,6]
    expect( bubble_sort(array) ).to eq([1,2,3,4,5,6,7])
  end
end

describe "insert_sort" do
  it "sorts the array" do
    array = [2,5,4,7,1,3,6]
    expect( insert_sort(array) ).to eq([1,2,3,4,5,6,7])
  end
end
