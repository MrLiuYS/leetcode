/**
 911. 在线选举
 https://leetcode-cn.com/problems/online-election/
 */

class TopVotedCandidate {
  // 预排序好的结果
  var tops = <int>[];

  // 投票的结果
  var voteCounts = Map<int, int>();

  // 传入的时间
  late List<int> times;

  TopVotedCandidate(List<int> persons, List<int> times) {
    this.times = times;

    // 预插值
    voteCounts[-1] = -1;
    int top = -1;

    for (var p in persons) {
      voteCounts[p] = (voteCounts[p] ?? 0) + 1;

      if (voteCounts[p]! >= voteCounts[top]!) {
        top = p;
      }

      tops.add(top);
    }
  }

  int q(int t) {
    var left = 0, right = times.length - 1;

    while (left < right) {
      var mid = (left + (right - left + 1) / 2).toInt();

      if (times[mid] <= t) {
        left = mid;
      } else {
        right = mid - 1;
      }
    }

    return tops[left];
  }
}

void main() {
  var obj =
      TopVotedCandidate([0, 1, 1, 0, 0, 1, 0], [0, 5, 10, 15, 20, 25, 30]);

  print(obj.q(3));
  print(obj.q(12));
  print(obj.q(25));
  print(obj.q(15));
  print(obj.q(24));
  print(obj.q(8));
}
