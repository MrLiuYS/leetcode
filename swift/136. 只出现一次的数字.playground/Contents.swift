/**
 136. 只出现一次的数字
 https://leetcode-cn.com/problems/single-number/
 */
import UIKit

// var greeting = "Hello, playground"

class Solution {
    func singleNumber(_ nums: [Int]) -> Int {
        var result = 0
        for num in nums {
            result ^= num
        }
        return result
    }

//    func singleNumber(_ nums: [Int]) -> Int {
//        if nums.count == 1 {
//            return nums.first!
//        }
//        let sortNum = nums.sorted()
//        for index in 0 ..< sortNum.count - 1 {
//            if (index % 2) == 0 {
//                if sortNum[index] != sortNum[index + 1] {
//                    return sortNum[index]
//                }
//            }
//        }
//        return sortNum.last!
//    }
}

print(Solution().singleNumber([2, 2, 1]))

print(Solution().singleNumber([4, 1, 2, 1, 2]))
