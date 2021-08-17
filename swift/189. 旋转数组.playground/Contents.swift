/**
 189. 旋转数组
 https://leetcode-cn.com/problems/rotate-array/
 */
import UIKit

class Solution {
    func rotate(_ nums: inout [Int], _ k: Int) {
        let tempIndex = k % nums.count
        nums.reverse()
        nums[0 ..< tempIndex].reverse()
        nums[tempIndex ..< nums.count].reverse()
    }
}

var nums = [1, 2, 3, 4, 5, 6, 7]

Solution().rotate(&nums, 3)

print(nums)
