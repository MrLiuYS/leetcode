/**
 283. 移动零
 https://leetcode-cn.com/problems/move-zeroes/
 */
import UIKit

class Solution {
    func moveZeroes(_ nums: inout [Int]) {
        var temp = 0
        for index in 0 ..< nums.count {
            if nums[index] != 0 {
                nums.swapAt(index, temp)
                temp += 1

//                print("i: \(i)  j: \(j)")
            }
        }
    }
}

var nums = [0, 1, 0, 3, 12]

Solution().moveZeroes(&nums)

print(nums)
