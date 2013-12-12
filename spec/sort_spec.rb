require 'spec_helper'
require_relative '../sort'

describe 'jackie_sort' do
  it "sorts an array of numbers" do
    my_array = [4, 23, 15, 8, 42, 16]
    jackie_sort(my_array)
    expect(my_array).to eq([4, 8, 15, 16, 23, 42])
  end

  it "sorts an array of strings" do
    my_array = ["if", "you", "hear", "me", "clap", "once"]
    jackie_sort(my_array)
    expect(my_array).to eq(["clap", "hear", "if", "me", "once", "you"])
  end

  it "sorts an array with negative numbers" do
    my_array = [4, 23, -15, 8, -42, 16]
    jackie_sort(my_array)
    expect(my_array).to eq([-42, -15, 4, 8, 16, 23])
  end
  it "sorts a really long array" do
    my_array = [4, 23, -15, 8, -42, 16, 27, 11, 12, 50, 500, 3000, 17, 13, 399, 300, 43, 47, 20, 18, 88, 1988]
    jackie_sort(my_array)
    expect(my_array).to eq([-42, -15, 4, 8, 11, 12, 13, 16, 17, 18, 20, 23, 27, 43, 47, 50, 88, 300, 399, 500, 1988, 3000])
  end
end
