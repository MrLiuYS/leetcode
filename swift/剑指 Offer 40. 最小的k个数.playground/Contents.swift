/**
 剑指 Offer 40. 最小的k个数
 https://leetcode-cn.com/study-plan/lcof/?progress=9qz9o9v
 */
import UIKit

class Solution {
    func getLeastNumbers(_ arr: [Int], _ k: Int) -> [Int] {
        if k < 0 {
            return []
        }

        if arr.count <= k {
            return arr
        }

        var temp = arr

        temp.sort(by: <)

        return Array(temp.prefix(k))
    }
}

print(Solution().getLeastNumbers([3, 2, 1], 10))
