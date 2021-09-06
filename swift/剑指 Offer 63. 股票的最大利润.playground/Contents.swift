/**
 剑指 Offer 63. 股票的最大利润
 https://leetcode-cn.com/problems/gu-piao-de-zui-da-li-run-lcof/
 */
import UIKit

class Solution {
    func maxProfit(_ prices: [Int]) -> Int {
        if prices.count < 2 {
            return 0
        }

        var low = Int.max
        var high = Int.min

        for price in prices {
            low = min(price, low)
            high = max(high, price - low)
        }
        return high
    }
}

print(Solution().maxProfit([7, 1, 5, 3, 6, 4]))

print(Solution().maxProfit([7, 6, 4, 3, 1]))

print(Solution().maxProfit([1,2]))

