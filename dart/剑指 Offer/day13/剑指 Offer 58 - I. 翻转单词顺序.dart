/**dart
 * 剑指 Offer 58 - I. 翻转单词顺序
 * https://leetcode-cn.com/problems/fan-zhuan-dan-ci-shun-xu-lcof/
 */

class Solution {
  String reverseWords(String s) {
    var array = s.split(" ");

    var resultArray = <String>[];

    for (var sub in array.reversed) {
      resultArray.add(sub);
    }
    return resultArray.join(" ");
  }
}

main(List<String> args) {
  print(Solution().reverseWords("the sky is blue"));
}
