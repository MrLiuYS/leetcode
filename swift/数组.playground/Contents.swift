import UIKit

/// 删除排序数组中的重复项

class Solution {
    func removeDuplicates(_ nums: inout [Int]) -> Int {
        if nums.count <= 1 {
            return nums.count
        }

        var left = 0

        for right in 1 ..< nums.count {
            if nums[left] != nums[right] {
                left += 1
                nums[left] = nums[right]
            }
        }
        left += 1
        return left
    }
}
