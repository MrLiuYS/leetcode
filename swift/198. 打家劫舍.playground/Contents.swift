/**
 198. 打家劫舍
 https://leetcode-cn.com/leetbook/read/top-interview-questions-easy/xnq4km/
 */
import UIKit

class Solution {
    func rob(_ nums: [Int]) -> Int {
        if nums.count == 0 {
            return 0
        } else if nums.count == 1 {
            return nums[0]
        } else {
            var first = nums[0]
            var second = max(first, nums[1])
            
            for num in nums[2...] {
                let temp = second
                second = max(first + num, second)
                first = temp
            }
            
            return second
        }
    }
}

print(Solution().rob([1, 2, 3, 1]))

print(Solution().rob([2, 7, 9, 3, 1]))
