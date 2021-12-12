/**
 709. 转换成小写字母
 https://leetcode-cn.com/problems/to-lower-case/
 */

class Solution {
  String toLowerCase(String s) {
    var result = <int>[];

    List<int> ascs = s.codeUnits;

    for (var c in ascs) {
      if (c > 64 && c < 91) {
        result.add(c + 32);
      } else {
        result.add(c);
      }
    }

    return String.fromCharCodes(result);
  }
}

void main() {
  print(Solution().toLowerCase("Hello"));
}
