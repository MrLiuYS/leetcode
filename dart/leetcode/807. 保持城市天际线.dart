/**
 807. 保持城市天际线
 https://leetcode-cn.com/problems/max-increase-to-keep-city-skyline/
 */
import 'dart:math';

class Solution {
  int maxIncreaseKeepingSkyline(List<List<int>> grid) {
    // 存放列最大值

    var colMax = List.generate(grid.length, (index) => 0);

    // 存放行最大值
    var rowMax = List.generate(grid[0].length, (index) => 0);

    for (var col = 0; col < grid.length; col++) {
      for (var row = 0; row < grid[0].length; row++) {
        colMax[col] = max(colMax[col], grid[col][row]);
        rowMax[row] = max(rowMax[row], grid[col][row]);
      }
    }

    var result = 0;

    for (var col = 0; col < grid.length; col++) {
      for (var row = 0; row < grid[0].length; row++) {
        result += min(colMax[col], rowMax[row]) - grid[col][row];
      }
    }

    return result;
  }
}

void main() {
  print(Solution().maxIncreaseKeepingSkyline([
    [3, 0, 8, 4],
    [2, 4, 5, 7],
    [9, 2, 6, 3],
    [0, 3, 1, 0]
  ]));
}
