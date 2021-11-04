/**
 367. 有效的完全平方数
 https://leetcode-cn.com/problems/valid-perfect-square/
 */

class Solution {
    func isPerfectSquare(_ num: Int) -> Bool {
        var pNum = num

        var num1 = 1
        while pNum > 0 {
            pNum -= num1
            num1 += 2
        }
        return pNum == 0

    }
}

print(Solution().isPerfectSquare(16))
print(Solution().isPerfectSquare(14))
