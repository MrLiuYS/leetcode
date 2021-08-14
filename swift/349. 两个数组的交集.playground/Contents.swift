/**
 349. 两个数组的交集
 https://leetcode-cn.com/problems/intersection-of-two-arrays/
 */
import UIKit

class Solution {
    func intersection(_ nums1: [Int], _ nums2: [Int]) -> [Int] {
        var map = [Int: Int]()
        var result = [Int]()
        for num in nums1 {
            if map[num] == nil {
                map[num] = 1
            }
        }
        for num in nums2 {
            if map[num] != nil, map[num]! > 0 {
                map[num]! -= 1
                result.append(num)
            }
        }

        return result
    }
}

print(Solution().intersection([1, 2, 2, 1], [2, 2]))
