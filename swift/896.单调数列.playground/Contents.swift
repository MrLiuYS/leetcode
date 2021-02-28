///
/// https://leetcode-cn.com/problems/monotonic-array/
///
///

import UIKit

class Solution {
    func isMonotonic(_ A: [Int]) -> Bool {
        let isIncrease = A.first! > A.last!

        for i in 0 ..< A.count - 1 {
            if (!isIncrease && A[i] > A[i + 1]) || (isIncrease && A[i] < A[i + 1]) {
                return false
            }
        }

        return true
    }
}

print(Solution().isMonotonic([1, 2, 2, 2]))
