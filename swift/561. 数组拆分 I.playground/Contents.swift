/**
 561. 数组拆分 I
 https://leetcode-cn.com/problems/array-partition-i/
 */
import UIKit

class Solution {
    func arrayPairSum(_ nums: [Int]) -> Int {
        let list = nums.sorted()

        var result = 0

        for index in 0 ..< list.count / 2 {
            result += min(list[index * 2], list[index * 2 + 1])
        }

        return result
    }
}

print(Solution().arrayPairSum([1, 4, 3, 2]))
print(Solution().arrayPairSum([6, 2, 6, 5, 1, 2]))
