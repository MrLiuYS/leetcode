/**
 209. 长度最小的子数组
 https://leetcode-cn.com/problems/minimum-size-subarray-sum/
 */
import UIKit

class Solution {
    func minSubArrayLen(_ s: Int, _ nums: [Int]) -> Int {
        var minLen: Int = .max
        var sum = 0
        var left = 0

        for right in 0 ..< nums.count {
            sum += nums[right]
            while sum >= s {
                minLen = min(right - left + 1, minLen)
                sum -= nums[left]
                left += 1
            }
        }

        return minLen == .max ? 0 : minLen
    }
}

print(Solution().minSubArrayLen(7, [2, 3, 1, 2, 4, 3]))
