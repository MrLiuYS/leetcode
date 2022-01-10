/**
 * 1185. 一周中的第几天
 * https://leetcode-cn.com/problems/day-of-the-week/
 */

class Solution {
  String dayOfTheWeek(int day, int month, int year) {
    var names = [
      "Sunday",
      "Monday",
      "Tuesday",
      "Wednesday",
      "Thursday",
      "Friday",
      "Saturday"
    ];
    var y = year, m = month;
    if (month <= 2) {
      y -= 1;
      m += 12;
    }
    var c = y / 100;
    y %= 100;
    var week = y + y / 4 + c / 4 - 2 * c + 26 * (m + 1) / 10 + day - 1;
    week = (week % 7 + 7) % 7;
    return names[week.toInt()];
  }
}

void main() {
  print(Solution().dayOfTheWeek(31, 8, 2019));
}
