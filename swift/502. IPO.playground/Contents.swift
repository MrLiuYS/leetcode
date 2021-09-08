/**
 502. IPO
 https://leetcode-cn.com/problems/ipo/
 */
import UIKit

class Solution {
    func findMaximizedCapital(_ k: Int, _ w: Int, _ profits: [Int], _ capital: [Int]) -> Int {
        var arr = [[Int]](repeating: [Int](repeating: 0, count: 2), count: profits.count)

        for index in 0 ..< profits.count {
            arr[index][0] = capital[index]
            arr[index][1] = profits[index]
        }
        arr.sort { a, b in
            a[0] != b[0] ? (b[0] > a[0]) : (a[1] > b[1])
        }

        print(arr)

        return 0
    }
}

//
// print(Solution().findMaximizedCapital(2, 0, [1, 2, 3], [0, 1, 1]))

print(Solution().findMaximizedCapital(3, 0, [1, 2, 3], [0, 1, 2]))
