/**
 27. 移除元素
 https://leetcode-cn.com/problems/remove-element/
 */
import UIKit

class Solution {
    func removeElement(_ nums: inout [Int], _ val: Int) -> Int {
        guard nums.count > 0 else {
            return 0
        }
        var fast = 0
        var slow = 0
        while fast < nums.count {
            if nums[fast] != val {
                nums[slow] = nums[fast]
                slow += 1
                fast += 1
            } else {
                fast += 1
            }
        }

        return slow
    }
}

var nums = [3, 2, 2, 3]

print(Solution().removeElement(&nums, 3))

print(nums)
