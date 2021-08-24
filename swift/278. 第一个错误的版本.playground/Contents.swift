/**
 278. 第一个错误的版本
 https://leetcode-cn.com/problems/first-bad-version/
 */

import UIKit

class Solution {
    func firstBadVersion(_ n: Int) -> Int {
        var start = 0
        var end = n

        while start < end {
            let middle = start + (end - start) / 2
            if isBadVersion(middle) {
                end = middle
            } else {
                start = middle + 1
            }
        }

        return start
    }

    func isBadVersion(_ version: Int) -> Bool {
        return version >= 4
    }
}

print(Solution().firstBadVersion(5))
