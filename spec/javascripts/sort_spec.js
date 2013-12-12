describe("enochSort", function(){
  it("should sort an array of numbers", function() {
    var arry = [5, 6, 3, 2, 7, 4]
    expect(enochSort(arry)).toEqual([2, 3, 4, 5, 6, 7]);
  });
  it("should sort an array of numbers", function() {
    var arry = ["John", "Alex", "Stephanie", "Zinnia", "Alicia"];
    expect(enochSort(arry)).toEqual(["Alex", "Alicia", "John", "Stephanie", "Zinnia"])
  });
  it("should be able to handle double digit numbers", function() {
    var arry = [5, 6, 33, 2, 7, 4]
    expect(enochSort(arry)).toEqual([2, 4, 5, 6, 7, 33]);
  });
  it("should be able to handle duplicates", function() {
    var arry = [5, 6, 33, 2, 6, 7, 4]
    expect(enochSort(arry)).toEqual([2, 4, 5, 6, 6, 7, 33]);
  });
})
