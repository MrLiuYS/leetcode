/**dart
 * 剑指 Offer 57. 和为s的两个数字
 * https://leetcode-cn.com/problems/he-wei-sde-liang-ge-shu-zi-lcof/
 */

class Solution {
  List<int> twoSum(List<int> nums, int target) {
    var left = 0;
    var right = nums.length - 1;

    while (left < right) {
      if (nums[left] + nums[right] > target) {
        right -= 1;
      } else if (nums[left] + nums[right] < target) {
        left += 1;
      } else {
        return [nums[left], nums[right]];
      }
    }
    return [];
  }
}

main(List<String> args) {
  print(Solution().twoSum([2, 7, 11, 15], 9));
}
