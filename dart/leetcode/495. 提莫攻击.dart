import 'dart:math';

/**
 495. 提莫攻击
 https://leetcode-cn.com/problems/teemo-attacking/
 */

class Solution {
  int findPoisonedDuration(List<int> timeSeries, int duration) {
    if (timeSeries.length > 1) {
      var res = duration;
      for (var i = 1; i < timeSeries.length; i++) {
        int time = timeSeries[i] - timeSeries[i - 1];
        res += min(duration, time);
      }
      return res;
    }
    return duration;
  }
}

main() {
  print(Solution().findPoisonedDuration([1], 2));
  print(Solution().findPoisonedDuration([1, 4], 2));
}
