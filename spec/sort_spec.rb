require 'spec_helper'
require_relative '../sort'

describe '#sort' do
  it "should sort numbers in ascending order" do
    array = [2,1].my_sort
    expect(array).to eq([1, 2])
  end

  it "should be able to sort more" do
    array = [3,4,2,1].my_sort
    expect(array).to eq([1, 2, 3, 4])
  end

  it 'should be able to sort even' do
    array = []
    100.times { array << rand(100) }
    expect(array.my_sort).to eq(array.sort)
  end

  
end
