/**
 851. 喧闹和富有
 https://leetcode-cn.com/problems/loud-and-rich/
 */


class Solution {
    func loudAndRich(_ richer: [[Int]], _ quiet: [Int]) -> [Int] {
        // 安静值得长度
        let n = quiet.count
        
        // 初始化一个二阶矩阵
        // 存储所有指向bi的数组
        var g = [[Int]](repeating: [Int](), count: n)
        
        for r in richer {
            g[r[1]].append(r[0])
        }

        var ans = [Int](repeating: -1, count: n)
        
        for i in 0 ..< n {
            dfs(i, quiet, g, &ans)
        }
        
        return ans
    }
    
    func dfs(_ x: Int, _ quiet: [Int], _ g: [[Int]], _ ans: inout [Int]) {
        if ans[x] != -1 {
            return
        }
        
        ans[x] = x
        
        for y in g[x] {
            //递归
            dfs(y, quiet, g, &ans)
            
            if quiet[ans[y]] < quiet[ans[x]] {
                ans[x] = ans[y]
            }
        }
    }
}

print(Solution().loudAndRich([[1, 0], [2, 1], [3, 1], [3, 7], [4, 3], [5, 3], [6, 3]],
                             [3, 2, 5, 4, 6, 1, 7, 0]))
