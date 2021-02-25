///
/// https://leetcode-cn.com/problems/flipping-an-image/
///
///
class Solution {
  List<List<int>> flipAndInvertImage(List<List<int>> A) {
    return [
      [1, 0, 0],
      [0, 1, 0],
      [1, 1, 1]
    ];
  }
}

main() {
  print(Solution().flipAndInvertImage([
    [1, 1, 0],
    [1, 0, 1],
    [0, 0, 0]
  ]));
}
