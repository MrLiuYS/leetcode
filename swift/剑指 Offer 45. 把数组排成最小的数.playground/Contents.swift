/**
 剑指 Offer 45. 把数组排成最小的数
 https://leetcode-cn.com/problems/ba-shu-zu-pai-cheng-zui-xiao-de-shu-lcof/
 */
import UIKit

class Solution {
    func minNumber(_ nums: [Int]) -> String {
        var strs = nums.map { "\($0)" }
        strs.sort(by: { $0 + $1 < $1 + $0 })
        return strs.joined(separator: "")
    }
}

print(Solution().minNumber([10, 2]))
print(Solution().minNumber([3,30,34,5,9]))
