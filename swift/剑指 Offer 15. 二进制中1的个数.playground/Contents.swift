/**
 剑指 Offer 15. 二进制中1的个数
 https://leetcode-cn.com/problems/er-jin-zhi-zhong-1de-ge-shu-lcof/
 */
class Solution {
    func hammingWeight(_ n: Int) -> Int {
        var num = n
        var result = 0
        for _ in 0 ..< 32 {
            result += (num & 1)
            num = num >> 1
        }
        return result
    }
}
