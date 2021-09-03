/**
 剑指 Offer 04. 二维数组中的查找
 https://leetcode-cn.com/problems/er-wei-shu-zu-zhong-de-cha-zhao-lcof/
 */
import UIKit

class Solution {
    func findNumberIn2DArray(_ matrix: [[Int]], _ target: Int) -> Bool {
        var row = matrix.count - 1, col = 0
        
        while row >= 0, col <= matrix[0].count - 1 {
            if matrix[row][col] > target {
                row -= 1
            } else if matrix[row][col] < target {
                col += 1
            } else {
                return true
            }
        }
        
        return false
    }
}

print(Solution().findNumberIn2DArray([
    [1, 4, 7, 11, 15],
    [2, 5, 8, 12, 19],
    [3, 6, 9, 16, 22],
    [10, 13, 14, 17, 24],
    [18, 21, 23, 26, 30]
], 20))
