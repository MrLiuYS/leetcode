/**
 48. 旋转图像
 https://leetcode-cn.com/problems/rotate-image/
 */
import UIKit

class Solution {
    func rotate(_ matrix: inout [[Int]]) {
        let n = matrix.count

        for i in 0 ..< n {
            for j in i ..< n {
                print("i: \(i) j:\(j)")
                let temp = matrix[i][j]
                matrix[i][j] = matrix[j][i]
                matrix[j][i] = temp
            }
        }
        for i in 0 ..< n {
            for j in 0 ..< n / 2 {
                let temp = matrix[i][j]
                matrix[i][j] = matrix[i][n-j-1]
                matrix[i][n-j-1] = temp
            }
        }
    }
}

var matrix = [[1, 2, 3], [4, 5, 6], [7, 8, 9]]

Solution().rotate(&matrix)

print(matrix)
