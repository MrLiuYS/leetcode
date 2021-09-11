/**dart
 * 剑指 Offer 21. 调整数组顺序使奇数位于偶数前面
 * https://leetcode-cn.com/problems/diao-zheng-shu-zu-shun-xu-shi-qi-shu-wei-yu-ou-shu-qian-mian-lcof/
 */

class Solution {
  List<int> exchange(List<int> nums) {
    var arr = nums;
    var i = 0, j = nums.length - 1;
    while (i < j) {
      if (arr[i] % 2 == 0) {
        var temp = arr[i];
        arr[i] = arr[j];
        arr[j] = temp;
        j -= 1;
      } else {
        i += 1;
      }
    }
    return arr;
  }
}

main(List<String> args) {
  print(Solution().exchange([1, 2, 3, 4]));
}
