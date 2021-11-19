/**
 397. 整数替换
 https://leetcode-cn.com/problems/integer-replacement/
 */


/// 贪心算法
class Solution {
    func integerReplacement(_ n: Int) -> Int {
        var remain = n

        var time = 0

        while remain != 1 {
            if remain % 2 == 1 {
                let temp = remain - 1
                if temp / 2 % 2 == 1, temp / 2 != 1 {
                    remain += 1
                } else {
                    remain = temp
                }
            } else {
                remain /= 2
            }
            time += 1
        }
        return time
    }
}

print(Solution().integerReplacement(8))
