/**
 剑指 Offer 11. 旋转数组的最小数字
 https://leetcode-cn.com/problems/xuan-zhuan-shu-zu-de-zui-xiao-shu-zi-lcof/
 */
import UIKit

class Solution {
    func minArray(_ numbers: [Int]) -> Int {
        var left = 0, right = numbers.count - 1

        while left < right {
            let mid = left + (right - left) / 2

            if numbers[mid] < numbers[right] {
                right = mid
            } else if numbers[mid] > numbers[right] {
                left = mid + 1
            } else {
                right -= 1
            }
        }

        return numbers[left]
    }
}

print(Solution().minArray([3, 4, 5, 1, 2]))
