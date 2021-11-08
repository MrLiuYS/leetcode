/**
 299. 猜数字游戏
 https://leetcode-cn.com/problems/bulls-and-cows/
 */

import 'dart:math';

class Solution {
  String getHint(String secret, String guess) {
    var a = 0, b = 0;

    var base0 = 0;

    var nums = List.generate(10, (int index) => 0);

    var minLength = min(secret.length, guess.length);

    for (var i = 0; i < minLength; i++) {
      var c1 = secret.substring(i, i + 1);
      var c2 = guess.substring(i, i + 1);
      if (c1 == c2) {
        a += 1;
      } else {
        var i = int.parse(c1) - base0;
        var j = int.parse(c2) - base0;
        if (nums[i] < 0) {
          b += 1;
        }
        if (nums[j] > 0) {
          b += 1;
        }
        nums[i] += 1;
        nums[j] -= 1;
      }
    }

    return "${a}A${b}B";
  }
}

main() {
  print(Solution().getHint("1807", "7810"));
}
