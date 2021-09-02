/**

 剑指 Offer 53 - I. 在排序数组中查找数字 I
 https://leetcode-cn.com/problems/zai-pai-xu-shu-zu-zhong-cha-zhao-shu-zi-lcof/
 */
import UIKit

class Solution {
    func search(_ nums: [Int], _ target: Int) -> Int {
        var result = 0
        for num in nums {
            if num == target {
                result += 1
            }
        }

        return result
    }
}

print(Solution().search([5, 7, 7, 8, 8, 10], 8))
