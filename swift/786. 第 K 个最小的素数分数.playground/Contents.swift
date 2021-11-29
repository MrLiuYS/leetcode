/**
 786. 第 K 个最小的素数分数
 https://leetcode-cn.com/problems/k-th-smallest-prime-fraction/
 */

import UIKit

class Solution {
    func kthSmallestPrimeFraction(_ arr: [Int], _ k: Int) -> [Int] {
        var list = [[Int]]()

        for i in 0 ..< arr.count {
            for j in (i + 1) ..< arr.count {
                list.append([arr[i], arr[j]])
            }
        }

        list.sort { x, y in
            (x[0] * y[1] - y[0] * x[1]) < 0
        }

        return list[k - 1]
    }
}

print(Solution().kthSmallestPrimeFraction([1, 2, 3, 5], 3))

print(Solution().kthSmallestPrimeFraction([1, 7], 1))
