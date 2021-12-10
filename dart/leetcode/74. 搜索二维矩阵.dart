/**
 * 74. 搜索二维矩阵
 * https://leetcode-cn.com/problems/search-a-2d-matrix/
 */

class Solution {
  bool searchMatrix(List<List<int>> matrix, int target) {
    if (matrix.isEmpty || matrix.first.isEmpty) {
      return false;
    }

    for (var row in matrix) {
      int fisrt = row.first;
      int right = row.last;

      if (fisrt == target || right == target) {
        return true;
      }

      if (fisrt < target && right > target) {
        var left = 0, right = row.length - 1;

        while (left <= right) {
          int mid = (left + (right - left) / 2).toInt();

          if (row[mid] > target) {
            right = mid - 1;
          } else if (row[mid] < target) {
            left = mid + 1;
          } else {
            return true;
          }
        }
      }
    }

    return false;
  }
}

main() {
  print(Solution().searchMatrix([
    [1, 3, 5, 7],
    [10, 11, 16, 20],
    [23, 30, 34, 60]
  ], 3));

  print(Solution().searchMatrix([
    [1, 3, 5, 7],
    [10, 11, 16, 20],
    [23, 30, 34, 50]
  ], 5));
}
