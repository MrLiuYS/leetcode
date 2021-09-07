/**
 剑指 Offer 47. 礼物的最大价值
 https://leetcode-cn.com/problems/li-wu-de-zui-da-jie-zhi-lcof/
 */
import UIKit

class Solution {
    func maxValue(_ grid: [[Int]]) -> Int {
        var dp = [Int](repeating: 0, count: grid[0].count)

        for row in 0..<grid.count {
            dp[0] = dp[0] + grid[row][0]
            for col in 1..<grid[0].count {
                dp[col] = max(dp[col - 1], dp[col]) + grid[row][col]
            }
        }
        return dp.last!
    }
}

print(Solution().maxValue([
    [1, 3, 1],
    [1, 5, 1],
    [4, 2, 1]
]))
