/**
 121. 买卖股票的最佳时机
 https://leetcode-cn.com/problems/best-time-to-buy-and-sell-stock/
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
