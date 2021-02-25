///
/// https://leetcode-cn.com/problems/transpose-matrix/
///

import UIKit

class Solution {
    func transpose(_ matrix: [[Int]]) -> [[Int]] {
        // 定义一个 空数组, 值默认是0
        var result = Array(repeating: Array(repeating: 0, count: matrix.count), count: matrix[0].count)

        for i in 0 ..< matrix.count {
            for j in 0 ..< matrix[i].count {
                result[j][i] = matrix[i][j]
            }
        }

        return result
    }
}

print(Solution().transpose([[1, 2, 3],
                            [4, 5, 6],
                            [7, 8, 9]]))

print(Solution().transpose([[1,2,3],[4,5,6]]))


