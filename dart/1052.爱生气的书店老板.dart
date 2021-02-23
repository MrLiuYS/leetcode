import 'dart:math';

class Solution {
  int maxSatisfied(List<int> customers, List<int> grumpy, int X) {
    var total = 0;

    var diff = 0;

    for (var i = 0; i < customers.length; i++) {
      if (grumpy[i] == 0) {
        total += customers[i];
      }
    }

    for (var i = 0; i < customers.length; i++) {
      if (grumpy[i] == 1) {
        total += customers[i];
      }

      if (i >= X - 1) {
        diff = max(total, diff);

        if (grumpy[i - (X - 1)] == 1) {
          total -= customers[i - (X - 1)];
        }
      }
    }

    return diff;
  }
}

main() {
  print(Solution()
      .maxSatisfied([1, 0, 1, 2, 1, 1, 7, 5], [0, 1, 0, 1, 0, 1, 0, 1], 3));

  print(Solution().maxSatisfied([1], [0], 1));
}
