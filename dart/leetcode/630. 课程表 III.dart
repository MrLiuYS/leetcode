/**
 630. 课程表 III
 https://leetcode-cn.com/problems/course-schedule-iii/
 */

class Solution {
  int scheduleCourse(List<List<int>> courses) {
    courses.sort((List<int> a, List<int> b) {
      return a.last.compareTo(b.last);
    });

    print(courses);

    // 总课程时间
    var total = 0;

    var queue = <int>[];

    for (var cource in courses) {
      var ti = cource[0], di = cource[1];

      if (total + ti <= di) {
        total += ti;
        queue.add(ti);

        queue.sort();
      } else if (queue.isNotEmpty && queue.last > ti) {
        total = total - queue.last + ti;

        queue.removeLast();

        queue.add(ti);

        queue.sort();
      }
    }

    return queue.length;
  }
}

void main() {
  print(Solution().scheduleCourse([
    [7, 17],
    [3, 12],
    [10, 20],
    [9, 10],
    [5, 20],
    [10, 19],
    [4, 18]
  ]));
}
