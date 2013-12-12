require 'spec_helper'
require_relative '../sort'


describe "Sort" do



  it "matches the length of the array of objects" do
    a = [1,2,7,9,3]
    expect(a.count).to eq(stack_overflow_sort(a).count)
  end

  it "takes an array of objects" do
    a = [1,4,2,7,11,9]
    expect(a.class).to eq(stack_overflow_sort(a).class)
  end

  it "expects item[i] to be less than or equal to item[i+1]" do
    a = [1,2,3,7,9,22,55,12,34]
    i=0
    expect(a[i]).to be <=(stack_overflow_sort(a).first)
  end

  it "expects item[i] to be smaller then last item" do
    a = [1,2,3,7,9,22,55,12,34]
    i=0
    expect(a[i]).to be <=(stack_overflow_sort(a).last)
  end

  it "expects item[i] to be start with an earlier letter then last item" do
    a = ["aunt", "banana", "giant", "zoo", "frank", "eagle", "peas"]
    i=0
    expect(a[i]).to be <=(stack_overflow_sort(a).last)
  end

  # it "expects item[i] to be start with an earlier letter then last item" do
  #   a = ["aunt", 1, "banana", 55, "giant", 22, "zoo", 11, "frank", 10, "eagle", 7, "peas", 100]
  #   i=0
  #   expect(a[i]).to be <=(stack_overflow_sort(a).last)
  # end

end