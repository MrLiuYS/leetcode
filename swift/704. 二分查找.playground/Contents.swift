/**
 704. 二分查找
 https://leetcode-cn.com/problems/binary-search/
 */
import UIKit

class Solution {
    func search(_ nums: [Int], _ target: Int) -> Int {
        var left = 0
        var right = nums.count

        while left < right {
            let mid = (left + right) / 2

            if target > nums[mid] {
                left = mid + 1
            } else if target < nums[mid] {
                right = mid
            } else {
                return mid
            }
        }

        return -1
    }
}

print(Solution().search([-1, 0, 3, 5, 9, 12], 9))
print(Solution().search([-1, 0, 3, 5, 9, 12], 2))
