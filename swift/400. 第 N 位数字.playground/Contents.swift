/**
 400. 第 N 位数字
 https://leetcode-cn.com/problems/nth-digit/
 */

import UIKit
class Solution {
    func findNthDigit(_ n: Int) -> Int {
        var n = n

        // 整数位数
        var d = 1
        var count = 9

        while n > d * count {
            n -= d * count
            d += 1
            count *= 10
        }
        let index = n - 1
        let start = Int(pow(Double(10), Double(d - 1)))

        let num = start + index / d
        let digitIndex = index % d
        let digit = (num / Int(pow(Double(10), Double(d - digitIndex - 1)))) % 10

        return digit
    }
}

// print(Solution().findNthDigit(3))

print(Solution().findNthDigit(12))
