/**
 851. 喧闹和富有
 https://leetcode-cn.com/problems/loud-and-rich/
 */

class Solution {
  List<int> loudAndRich(List<List<int>> richer, List<int> quiet) {
    // 安静值得长度
    var n = quiet.length;

    // 初始化一个二阶矩阵
    // 存储所有指向bi的数组
    // var g = [[Int]](repeating: [Int](), count: n)
    var g = List.generate(n, (index) => <int>[]);

    for (var r in richer) {
      g[r[1]].add(r[0]);
    }

    var ans = List.generate(n, (index) => -1);

    for (var i = 0; i < n; i++) {
      dfs(i, quiet, g, ans);
    }

    return ans;
  }

  dfs(int x, List<int> quiet, List<List<int>> g, List<int> ans) {
    if (ans[x] != -1) {
      return;
    }

    ans[x] = x;

    for (var y in g[x]) {
      //递归
      dfs(y, quiet, g, ans);

      if (quiet[ans[y]] < quiet[ans[x]]) {
        ans[x] = ans[y];
      }
    }
  }
}

void main() {
  print(Solution().loudAndRich([
    [1, 0],
    [2, 1],
    [3, 1],
    [3, 7],
    [4, 3],
    [5, 3],
    [6, 3]
  ], [
    3,
    2,
    5,
    4,
    6,
    1,
    7,
    0
  ]));
}
