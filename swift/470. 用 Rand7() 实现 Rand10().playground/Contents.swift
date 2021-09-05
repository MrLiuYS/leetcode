/**
 470. 用 Rand7() 实现 Rand10()
 https://leetcode-cn.com/problems/implement-rand10-using-rand7/
 */
import UIKit

class SolBase {
    func rand7() -> Int {
        Int(arc4random() % 7) + 1
    }
}

class Solution: SolBase {
    func rand10() -> Int {
        var row = 0, col = 0, idx = 0

        repeat {
            row = rand7()
            col = rand7()
            idx = col + (row - 1) * 7

        } while idx > 40

        return 1 + (idx - 1) % 10
    }
}

print(Solution().rand10())
print(Solution().rand10())
print(Solution().rand10())
print(Solution().rand10())
print(Solution().rand10())
print(Solution().rand10())
print(Solution().rand10())
print(Solution().rand10())
print(Solution().rand10())
print(Solution().rand10())
print(Solution().rand10())
print(Solution().rand10())
