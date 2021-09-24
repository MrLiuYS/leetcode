/**
 剑指 Offer 57 - II. 和为s的连续正数序列
 https://leetcode-cn.com/problems/he-wei-sde-lian-xu-zheng-shu-xu-lie-lcof/
 */
import UIKit

class Solution {
    func findContinuousSequence(_ target: Int) -> [[Int]] {
        var result: [[Int]] = []
        var left = 1
        var right = 2
        var sum = 3

        while left < right {
            if sum == target {
                result.append([Int](left...right))
                sum -= left
                left += 1
            } else if sum < target {
                right += 1
                sum += right
            } else {
                sum -= left
                left += 1
            }
        }

        return result
    }
}

print(Solution().findContinuousSequence(9))
