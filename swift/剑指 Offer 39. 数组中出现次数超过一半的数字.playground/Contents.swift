/**
 剑指 Offer 39. 数组中出现次数超过一半的数字
 https://leetcode-cn.com/problems/shu-zu-zhong-chu-xian-ci-shu-chao-guo-yi-ban-de-shu-zi-lcof/
 */
import UIKit

class Solution {
    func majorityElement(_ nums: [Int]) -> Int {
        return nums.sorted()[nums.count / 2]
    }
}

print(Solution().majorityElement( [1, 2, 3, 2, 2, 2, 5, 4, 2]))
