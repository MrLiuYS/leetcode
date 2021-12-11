/**
 153. 寻找旋转排序数组中的最小值
 https://leetcode-cn.com/problems/find-minimum-in-rotated-sorted-array/
 */

class Solution {
    
    func findMin(_ nums: [Int]) -> Int {
        // 按照题意nums.count > 0
        //猥琐的算法
        return nums.sorted(by: <).first!
    }
    
//    func findMin(_ nums: [Int]) -> Int {
//        var left = 0, right = nums.count - 1
//
//        while left < right {
//            let mid = left + (right - left) / 2
//
//            if nums[mid] < nums[right] {
//                right = mid
//            } else {
//                left = mid + 1
//            }
//        }
//
//        return nums[left]
//    }
}

print(Solution().findMin([3, 4, 5, 1, 2]))
