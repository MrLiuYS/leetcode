/**
 724. 寻找数组的中心下标
 https://leetcode-cn.com/problems/find-pivot-index/
 */
import UIKit

class Solution {
    func pivotIndex(_ nums: [Int]) -> Int {
        if nums.count < 2 {
            return -1
        }
        
        var left = 0
        var right = nums.reduce(0) { $0 + $1 }
        
        for (index, item) in nums.enumerated() {
            if right - item == left {
                return index
            }
            right -= item
            
            left += item
        }
        
        return -1
    }
}

print(Solution().pivotIndex([1, 7, 3, 6, 5, 6]))

print(Solution().pivotIndex([1, 2, 3]))


print(Solution().pivotIndex([2, 1, -1]))
