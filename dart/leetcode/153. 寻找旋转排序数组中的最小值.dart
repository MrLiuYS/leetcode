/**
 * 153. 寻找旋转排序数组中的最小值
 * https://leetcode-cn.com/problems/find-minimum-in-rotated-sorted-array/
 */

class Solution {
  int findMin(List<int> nums) {
    var left = 0, right = nums.length - 1;

    while (left < right) {
      int mid = (left + (right - left) / 2).toInt();

      if (nums[mid] < nums[right]) {
        right = mid;
      } else {
        left = mid + 1;
      }
    }

    return nums[left];
  }
}

main() {
  print(Solution().findMin([3, 4, 5, 1, 2]));
}
