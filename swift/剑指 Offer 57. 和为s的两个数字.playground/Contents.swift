/**
 剑指 Offer 57. 和为s的两个数字
 https://leetcode-cn.com/problems/he-wei-sde-liang-ge-shu-zi-lcof/
 */
import UIKit
/**
 class Solution {
     func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
         var map = [Int: Int]()

         nums.forEach { key in
             map[key] = target - key
         }

         for num in nums {
             let value = target - num
             if map[value] != nil {
                 return [num, value]
             }
         }
         return []
     }
 }
  */

class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var left = 0
        var right = nums.count - 1

        while left < right {
            if nums[left] + nums[right] > target {
                right -= 1
            } else if nums[left] + nums[right] < target {
                left += 1
            } else {
                return [nums[left], nums[right]]
            }
        }
        return []
    }
}

print(Solution().twoSum([2, 7, 11, 15], 9))
