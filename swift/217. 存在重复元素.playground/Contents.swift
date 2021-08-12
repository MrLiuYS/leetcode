
/**
 217. 存在重复元素
 https://leetcode-cn.com/problems/contains-duplicate/
 */

import UIKit
class Solution {
    func containsDuplicate(_ nums: [Int]) -> Bool {
        var map = [Int: Int]()

        for num in nums {
            if map[num] != nil {
                return true
            } else {
                map[num] = 1
            }
        }

        return false
    }
}

print(Solution().containsDuplicate([1, 2, 3, 1]))
