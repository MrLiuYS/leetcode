/**
 56. 合并区间
 https://leetcode-cn.com/problems/merge-intervals/
 */
import UIKit

class Solution {
    func merge(_ intervals: [[Int]]) -> [[Int]] {
        guard intervals.count > 1 else {
            return intervals
        }
        
        let array = intervals.sorted { $0[0] < $1[0] }
        var result = [[Int]]()
        
        result.append(array[0])
        
        for num in array[1...] {
            let pre = result.last!
            if pre[1] >= num[0] {
                if pre[1] < num[1] {
                    result[result.count - 1][1] = num[1]
                }
            } else {
                result.append(num)
            }
        }
        
        return result
    }
}

print(Solution().merge([[1, 3], [2, 6], [8, 10], [15, 18]]))
