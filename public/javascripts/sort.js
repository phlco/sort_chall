function morganPartition(arr, left, right) {
    // var rand = Math.floor(Math.random * arr.length);
    var pivot = arr[Math.floor((left + right) / 2)];
    var i = left;
    var j = right;
    while(i <= j) {
      while(arr[i] < pivot) {
        i++;
      }
      while(arr[j] > pivot){
        j--;
      }
      if(i <= j) {
        swap(arr, i, j);
        i++;
        j--;
      }
      return i;
    }

}

function morganSort(arr, left, right) {
  var index;
  if(arr.length > 1) {
    index = morganPartition(arr, left, right);
    if(left < index-1){
      morganSort(arr, left, index-1);
    }
    if(right > index){
      morganSort(arr, index, right);
    }
  }
  return arr;
}
var arr = [2, 1, 8, 4];
var sorted = morganSort(arr, 0, arr.length -1);

function swap(arr,a,b) {
  var temp = arr[a];
  arr[a] = arr[b];
  arr[b] = temp;
}