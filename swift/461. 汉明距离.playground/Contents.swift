/**
 461. 汉明距离
 https://leetcode-cn.com/problems/hamming-distance/
 */
import UIKit

class Solution {
    func hammingDistance(_ x: Int, _ y: Int) -> Int {
        let binaryInteger = String(max(x, y), radix: 2)

        var xNum = x
        var yNum = y
        var result = 0
        for _ in binaryInteger {
            if (xNum & 1) != (yNum & 1) {
                result += 1
            }
            xNum = xNum >> 1
            yNum = yNum >> 1
        }

        return result
    }
}

print(Solution().hammingDistance(1, 4))
print(Solution().hammingDistance(3, 1))
