/**
 977. 有序数组的平方
 https://leetcode-cn.com/problems/squares-of-a-sorted-array/
 */

import UIKit

class Solution {
    func sortedSquares(_ nums: [Int]) -> [Int] {
        guard !nums.isEmpty else {
            return []
        }

        var result = [Int](repeating: 0, count: nums.count)

        var left = 0, right = nums.count - 1
        var lastIndex = nums.count - 1

        while left <= right {
            if abs(nums[left]) >= abs(nums[right]) {
                result[lastIndex] = nums[left] * nums[left]
                left += 1
            } else {
                result[lastIndex] = nums[right] * nums[right]
                right -= 1
            }
            lastIndex -= 1
        }

        return result
    }
}

print(Solution().sortedSquares([-4, -1, 0, 3, 10]))
