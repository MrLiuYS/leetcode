///
/// 1154. 一年中的第几天
/// https://leetcode-cn.com/problems/day-of-the-year/
///

class Solution {
  int dayOfYear(String date) {
    var monthDays = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31];

    var time = date.split("-");

    var year = int.parse(time[0]),
        month = int.parse(time[1]),
        day = int.parse(time[2]);

    var result = 0;

    if ((year % 400 == 0) || (year % 4 == 0 && year % 100 != 0)) {
      monthDays[1] += 1;
    }

    for (var i = 0; i < month - 1; i++) {
      result += monthDays[i];
    }

    return result + day;
  }
}

void main() {
  print(Solution().dayOfYear("2019-01-09"));

  print(Solution().dayOfYear("2019-02-10"));

  print(Solution().dayOfYear("2003-03-01"));

  print(Solution().dayOfYear("2012-01-02"));
}
