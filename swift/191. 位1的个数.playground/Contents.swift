/**
 191. 位1的个数
 https://leetcode-cn.com/problems/number-of-1-bits/
 */
import UIKit

class Solution {
    func hammingWeight(_ n: Int) -> Int {
        var num = n
        var result: Int = 0

        for _ in 0 ... 32 {
            result += (num & 1)
            num = num >> 1
        }

        return result
    }
}

print(Solution().hammingWeight(13)) // 3
// print(Solution().hammingWeight(00000000000000000000000000001011))
