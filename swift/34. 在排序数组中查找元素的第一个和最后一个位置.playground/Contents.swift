/**
 34. 在排序数组中查找元素的第一个和最后一个位置
 https://leetcode-cn.com/problems/find-first-and-last-position-of-element-in-sorted-array/
 */

class Solution {
    func searchRange(_ nums: [Int], _ target: Int) -> [Int] {
        guard !nums.isEmpty else {
            return [-1, -1]
        }
        
        let left = searchLeft(nums, target)
        
        guard left != -1 else {
            return [-1, -1]
        }
        
        let right = searchRight(nums, target, left)
        
        return [left, right]
    }
    
    func searchLeft(_ nums: [Int], _ target: Int) -> Int {
        var left = 0, right = nums.count - 1
        
        var result: Int = -1
        
        while left <= right {
            let mid = left + (right - left) / 2
            
            if nums[mid] < target {
                left = mid + 1
                
            } else if nums[mid] > target {
                right = mid - 1
            } else {
                result = mid
                
                right -= 1
            }
        }
        return result
    }
    
    func searchRight(_ nums: [Int], _ target: Int, _ left: Int) -> Int {
        var left = left, right = nums.count - 1
        
        var result: Int = -1
        
        while left <= right {
            let mid = left + (right - left) / 2
            
            if nums[mid] < target {
                left = mid + 1
                
            } else if nums[mid] > target {
                right = mid - 1
            } else {
                result = mid
                
                left += 1
            }
        }
        return result
    }
}

print(Solution().searchRange([5, 7, 7, 8, 8, 10], 8))
