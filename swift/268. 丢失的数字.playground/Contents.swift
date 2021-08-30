/**
 268. 丢失的数字
 https://leetcode-cn.com/problems/missing-number/
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

print(Solution().missingNumber([3, 0, 1]))
print(Solution().missingNumber([0, 1]))
print(Solution().missingNumber([9, 6, 4, 2, 3, 5, 7, 0, 1]))
print(Solution().missingNumber([0]))
