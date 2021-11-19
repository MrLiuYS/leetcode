/**
 594. 最长和谐子序列
 https://leetcode-cn.com/problems/longest-harmonious-subsequence/
 */
import UIKit

class Solution {
    func findLHS(_ nums: [Int]) -> Int {
        
        let sortNum = nums.sorted(by: <)
        var res = 0
        var low = 0
        for index in 0 ..< sortNum.count {
            while sortNum[index] - sortNum[low] > 1 {
                low += 1
            }
            if sortNum[index] - sortNum[low] == 1 {
                res = max(res, index - low + 1)
            }
        }

        return res
    }
}


print(Solution().findLHS([1,3,2,2,5,2,3,7]))




