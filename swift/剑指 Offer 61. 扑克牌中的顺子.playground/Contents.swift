/**
 剑指 Offer 61. 扑克牌中的顺子
 https://leetcode-cn.com/problems/bu-ke-pai-zhong-de-shun-zi-lcof/
 */


class Solution {
    func isStraight(_ nums: [Int]) -> Bool {
        let nums = nums.sorted()
        var count = 0
        for i in 0..<nums.count - 1 {
            if nums[i] == 0 {
                count += 1
                continue
            }
            if nums[i + 1] == nums[i] {
                return false
            }
        }
        return nums[4] - nums[count] < 5
    }
}


print(Solution().isStraight([1,2,3,4,5]))
