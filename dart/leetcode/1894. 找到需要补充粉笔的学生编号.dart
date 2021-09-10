import 'dart:ffi';

/**dart
 * 1894. 找到需要补充粉笔的学生编号
 * https://leetcode-cn.com/problems/find-the-student-that-will-replace-the-chalk/
 */

class Solution {
  int chalkReplacer(List<int> chalk, int k) {
    if (chalk.isEmpty) {
      return 0;
    }

    var sum = chalk.reduce((value, element) => value + element);
    var remain = k % sum;

    var result = 0;

    while (remain >= 0) {
      var index = result % chalk.length;
      remain -= chalk[index];
      if (remain < 0) {
        return index;
      }
      result += 1;
    }

    return result % chalk.length;
  }
}

main(List<String> args) {
  print(Solution().chalkReplacer([5, 1, 5], 22));

  print(Solution().chalkReplacer([3, 4, 1, 2], 25));
}
