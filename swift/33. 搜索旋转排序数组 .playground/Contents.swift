/**
 33. 搜索旋转排序数组
 https://leetcode-cn.com/problems/search-in-rotated-sorted-array/
 */
class Solution {
    func search(_ nums: [Int], _ target: Int) -> Int {
        if nums.isEmpty || (nums.count == 1 && nums.first != target) {
            return -1
        }
        
        var left = 0, right = nums.count - 1
        
        while left <= right {
            let mid = left + (right - left) / 2
            
            if nums[mid] == target {
                return mid
            }
            
            if nums[0] <= nums[mid] {
                if nums[0] <= target, target < nums[mid] {
                    right = mid - 1
                     
                } else {
                    left = mid + 1
                }
                
            } else {
                if nums.last! >= target, target > nums[mid] {
                    left = mid + 1
                } else {
                    right = mid - 1
                }
            }
        }
        
        return -1
    }
}

print(Solution().search([4, 5, 6, 7, 0, 1, 2], 0))

print(Solution().search([5, 1, 3], 3))
print(Solution().search([1, 3], 3))
