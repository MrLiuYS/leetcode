/**
 367. 有效的完全平方数
 https://leetcode-cn.com/problems/valid-perfect-square/
 */
class Solution {
  bool isPerfectSquare(int num) {
    var pNum = num;

    var num1 = 1;
    while (pNum > 0) {
      pNum -= num1;
      num1 += 2;
    }
    return pNum == 0;
  }
}

main() {
  print(Solution().isPerfectSquare(16));
  print(Solution().isPerfectSquare(14));
}
