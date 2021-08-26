/**
 剑指 Offer 42. 连续子数组的最大和
 https://leetcode-cn.com/problems/lian-xu-zi-shu-zu-de-zui-da-he-lcof/
 */
import UIKit

class Solution {
    func maxSubArray(_ nums: [Int]) -> Int {
        guard nums.count > 0 else {
            return 0
        }
        var p = 0
        var result = nums[0]
        for num in nums {
            p = max(num, num + p)
            result = max(result, p)
        }
        return result
    }
}

print(Solution().maxSubArray([-2, 1, -3, 4, -1, 2, 1, -5, 4]))
