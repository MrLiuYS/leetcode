/**
 70. 爬楼梯
 https://leetcode-cn.com/problems/climbing-stairs/
 */
import UIKit

class Solution {
    func climbStairs(_ n: Int) -> Int {
        if n <= 2 {
            return n
        }
        
        var first = 1
        var second = 2
        
        for _ in 3 ... n {
            second = first + second
            first = second - first
        }
        
        return second
    }
}

print(Solution().climbStairs(2))
print(Solution().climbStairs(3))
print(Solution().climbStairs(4))
print(Solution().climbStairs(5))
print(Solution().climbStairs(6))
