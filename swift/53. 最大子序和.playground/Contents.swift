/**
 53. 最大子序和
 https://leetcode-cn.com/problems/maximum-subarray/
 */
import UIKit

class Solution {
    /// （子数组最少包含一个元素）
    func maxSubArray(_ nums: [Int]) -> Int {
        var p = 0

        var result = nums[0]

        for num in nums {
            p = max(num, p + num)
            result = max(result, p)
        }

        return result
    }
}

print(Solution().maxSubArray([-2, 1, -3, 4, -1, 2, 1, -5, 4]))
print(Solution().maxSubArray([1]))
print(Solution().maxSubArray([0]))
print(Solution().maxSubArray([-1]))
print(Solution().maxSubArray([-10000]))
