/**
 231. 2 的幂
 https://leetcode-cn.com/problems/power-of-two/
 */
class Solution {
    func isPowerOfTwo(_ n: Int) -> Bool {
        guard n > 0 else {
            return false
        }
        
        var n = n
        
        while n % 2 == 0 {
            n /= 2
        }
        return n == 1
    }
    
//    func isPowerOfTwo(_ n: Int) -> Bool {
//        // 16: 10000
//        // 15: 01111
//
//        return n > 0 && n & (n - 1) == 0
//    }
}

print(Solution().isPowerOfTwo(16))
