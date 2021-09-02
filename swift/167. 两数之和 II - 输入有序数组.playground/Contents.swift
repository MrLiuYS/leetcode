/**
 167. 两数之和 II - 输入有序数组
 https://leetcode-cn.com/problems/two-sum-ii-input-array-is-sorted/
 */
import UIKit

class Solution {
    func twoSum(_ numbers: [Int], _ target: Int) -> [Int] {
        var map = [Int: Int]()

        for i in 0 ..< numbers.count {
            if let remaind = map[target - numbers[i]] {
                return [remaind, i + 1]
            }

            map[numbers[i]] = i + 1
        }
        return []
    }
}

print(Solution().twoSum([2, 7, 11, 15], 9))
print(Solution().twoSum([2, 3, 4], 6))
print(Solution().twoSum([-1, 0], -1))
