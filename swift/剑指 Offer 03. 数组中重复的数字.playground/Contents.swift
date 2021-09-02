/**
 剑指 Offer 03. 数组中重复的数字
 https://leetcode-cn.com/problems/shu-zu-zhong-zhong-fu-de-shu-zi-lcof/
 */
import UIKit

class Solution {
    func findRepeatNumber(_ nums: [Int]) -> Int {
        var map = [Int: Int]()
        
        for num in nums {
            if map[num] != nil {
                return num
            } else {
                map[num] = 1
            }
        }
        
        return 0
    }
}

print(Solution().findRepeatNumber([2, 3, 1, 0, 2, 5, 3]))
