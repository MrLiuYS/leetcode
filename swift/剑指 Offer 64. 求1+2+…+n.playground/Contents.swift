/**
 剑指 Offer 64. 求1+2+…+n
 https://leetcode-cn.com/problems/qiu-12n-lcof/
 */

class Solution {
    func sumNums(_ n: Int) -> Int {
        if n <= 0 {
            return 0
        }
        var sum = n
        sum += sumNums(n - 1)

        return sum
    }
}

print(Solution().sumNums(3))
print(Solution().sumNums(9))
