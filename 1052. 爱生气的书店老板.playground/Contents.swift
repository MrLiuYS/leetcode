import UIKit

class Solution {
    func maxSatisfied(_ customers: [Int], _ grumpy: [Int], _ X: Int) -> Int {
        var total = 0

        var diff = 0

        for i in 0 ..< customers.count {
            guard grumpy[i] == 0 else {
                continue
            }
            total += customers[i]
        }
        for i in 0 ..< customers.count {
            if grumpy[i] == 1 {
                total += customers[i]
            }

            if i >= X - 1 {
                diff = max(total, diff)
                
                if grumpy[i - (X - 1)] == 1 {
                    total -= customers[i - (X - 1)]
                }
            }
        }

        return diff
    }
}

print(Solution().maxSatisfied([1, 0, 1, 2, 1, 1, 7, 5], [0, 1, 0, 1, 0, 1, 0, 1], 3))

print(Solution().maxSatisfied([1], [0], 1))
