/**
 剑指 Offer 53 - II. 0～n-1中缺失的数字
 https://leetcode-cn.com/problems/que-shi-de-shu-zi-lcof/
 */
import UIKit

class Solution {
    func missingNumber(_ nums: [Int]) -> Int {
        var remain = nums.count

        for index in 0 ..< nums.count {
            remain += index
            remain -= nums[index]
        }

        return remain
    }
}

print(Solution().missingNumber([0, 1, 3]))
print(Solution().missingNumber([0, 1, 2, 3, 4, 5, 6, 7, 9]))
