/**
 剑指 Offer 10- II. 青蛙跳台阶问题
 https://leetcode-cn.com/problems/qing-wa-tiao-tai-jie-wen-ti-lcof/
 */
import UIKit

class Solution {
    func numWays(_ n: Int) -> Int {
        var a = 1
        var b = 1
        var sum = 0

        for _ in 0 ..< n {
            sum = (a + b) % 1000000007
            (a, b) = (b, sum)
        }
        return a
    }
}

print(Solution().numWays(2))
print(Solution().numWays(7))
