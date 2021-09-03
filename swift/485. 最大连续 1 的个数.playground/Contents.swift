/**
 485. 最大连续 1 的个数
 https://leetcode-cn.com/problems/max-consecutive-ones/
 */
import UIKit

class Solution {
    func findMaxConsecutiveOnes(_ nums: [Int]) -> Int {
        var result = 0, curMax = 0

        for num in nums {
            if num == 1 {
                curMax += 1
                if curMax > result {
                    result = curMax
                }

            } else {
                curMax = 0
            }
        }

        return result
    }
}

print(Solution().findMaxConsecutiveOnes([1, 1, 0, 1, 1, 1]))
