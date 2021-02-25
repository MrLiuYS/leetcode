///
/// https://leetcode-cn.com/problems/flipping-an-image/
///
///
class Solution {
  List<List<int>> flipAndInvertImage(List<List<int>> A) {
    var result = List<List<int>>();

    for (var i = 0; i < A.length; i++) {
      var items = List<int>();

      for (var j = A[i].length - 1; j >= 0; j--) {
        items.add(1 - A[i][j]);
      }

      result.add(items);
    }

    return result;
  }
}

main() {
  print(Solution().flipAndInvertImage([
    [1, 1, 0],
    [1, 0, 1],
    [0, 0, 0]
  ]));
}
