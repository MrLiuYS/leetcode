///
/// https://leetcode-cn.com/problems/monotonic-array/
///
///
class Solution {
  bool isMonotonic(List<int> A) {
    var isIncrease = A.first > A.last;

    for (var i = 0; i < A.length - 1; i++) {
      if ((!isIncrease && A[i] > A[i + 1]) || (isIncrease && A[i] < A[i + 1])) {
        return false;
      }
    }

    return true;
  }
}

main() {
  print(Solution().isMonotonic([21, 2, 2, 1]));
}
