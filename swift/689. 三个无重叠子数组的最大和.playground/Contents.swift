/**
 689. 三个无重叠子数组的最大和
 https://leetcode-cn.com/problems/maximum-sum-of-3-non-overlapping-subarrays/
 */

class Solution {
    func maxSumOfThreeSubarrays(_ nums: [Int], _ k: Int) -> [Int] {
        var ans = [Int](repeating: 0, count: 3)
        
        var sum1 = 0, maxSum1 = 0, maxSum1Idx = 0
        var sum2 = 0, maxSum2 = 0, maxSum2Idx1 = 0, maxSum2Idx2 = 0
        var sum3 = 0, maxTotal = 0
        
        for i in (k * 2) ..< nums.count {
            sum1 += nums[i - k * 2]
            sum2 += nums[i - k]
            sum3 += nums[i]
            
            if i >= k * 3 - 1 {
                if sum1 > maxSum1 {
                    maxSum1 = sum1
                    maxSum1Idx = i - k * 3 + 1
                }
                if maxSum1 + sum2 > maxSum2 {
                    maxSum2 = maxSum1 + sum2
                    maxSum2Idx1 = maxSum1Idx
                    maxSum2Idx2 = i - k * 2 + 1
                }
                if maxSum2 + sum3 > maxTotal {
                    maxTotal = maxSum2 + sum3
                    ans[0] = maxSum2Idx1
                    ans[1] = maxSum2Idx2
                    ans[2] = i - k + 1
                }
                
                sum1 -= nums[i - k * 3 + 1]
                sum2 -= nums[i - k * 2 + 1]
                sum3 -= nums[i - k + 1]
            }
        }
        
        return ans
    }
}

print(Solution().maxSumOfThreeSubarrays([1, 2, 1, 2, 6, 7, 5, 1], 2))
