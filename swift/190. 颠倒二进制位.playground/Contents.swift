/**
 190. 颠倒二进制位
 https://leetcode-cn.com/problems/reverse-bits/
 */
import UIKit

class Solution {
    func reverseBits(_ n: Int) -> Int {
        var num = n
        var result = 0
        var pow = 31
        while pow >= 0 {
            result += ((num & 1) << pow)
            num >>= 1
            pow -= 1
        }
        return result
    }
}

print(Solution().reverseBits(43261596))
print(Solution().reverseBits(4294967293))
