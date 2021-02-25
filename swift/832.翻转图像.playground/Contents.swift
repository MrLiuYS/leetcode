///
/// https://leetcode-cn.com/problems/flipping-an-image/
///


import UIKit

class Solution {
    func flipAndInvertImage(_ A: [[Int]]) -> [[Int]] {
        var result = [[Int]]()

        for i in 0 ..< A.count {
            var items = [Int]()
            for j in (0 ..< A[i].count).reversed() {
                items.append(1 - A[i][j])
            }
            result.append(items)
        }

        return result
    }
}

print(Solution().flipAndInvertImage([
    [1, 1, 0], [1, 0, 1], [0, 0, 0]
]))
//  [[1,0,0],[0,1,0],[1,1,1]]
