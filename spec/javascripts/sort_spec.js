describe("the sorting function", function(){
  it("sorts an array", function(){
    var arr = [3, 2, 9, 90, 40];
    expect(morganSort(arr, 0, arr.length - 1)).toEqual([2, 3, 9, 40, 90]);
  });
});