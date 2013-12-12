var enochSort = function(arry) {
  var i = 0;
  while(i < arry.length - 1) {
    var first = arry[i];
    var second = arry[i+1];
    if (first > second) {
      arry[i] = second;
      arry[i+1] = first;
      enochSort(arry);
    }
    else {
      i++;
    };
  };
  return arry;
};
