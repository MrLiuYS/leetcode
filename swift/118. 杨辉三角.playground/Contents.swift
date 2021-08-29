/**
 118. 杨辉三角
 https://leetcode-cn.com/problems/pascals-triangle/
 */
import UIKit

class Solution {
    func generate(_ numRows: Int) -> [[Int]] {
        var res: [[Int]]=Array(repeating: Array(repeating: 1, count: 1), count: numRows)
        for i in 0 ..< numRows {
            res[i]=Array(repeating: 1, count: i+1)
        }
        if numRows <= 2 {
            return res
        }
        for i in 2..<numRows {
            for j in 1..<i {
                res[i][j]=res[i-1][j-1]+res[i-1][j]
            }
        }
        return res
    }
}

print(Solution().generate(5))
