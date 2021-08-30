/**
 35. 搜索插入位置
 https://leetcode-cn.com/problems/search-insert-position/
 */
import UIKit

class Solution {
    func searchInsert(_ nums: [Int], _ target: Int) -> Int {
        var left = 0
        
        var right = nums.count - 1
        
        while left <= right {
            let middle = left + (right - left) / 2
            
            if nums[middle] < target {
                left = middle + 1
            } else {
                right = middle - 1
            }
        }
        
        return left
    }
}

print(Solution().searchInsert([1, 3, 5, 6], 5))
 print(Solution().searchInsert([1, 3, 5, 6], 2))
 print(Solution().searchInsert([1, 3, 5, 6], 7))
 print(Solution().searchInsert([1, 3, 5, 6], 0))
 print(Solution().searchInsert([1], 0))
