
/**
 122. 买卖股票的最佳时机 II
 https://leetcode-cn.com/problems/best-time-to-buy-and-sell-stock-ii/
 */
import UIKit

class Solution {
    func maxProfit(_ prices: [Int]) -> Int {
        var result = 0

        for index in 0 ..< prices.count - 1 {
            let remain = prices[index + 1] - prices[index]

            if remain > 0 {
                result += remain
            }
        }

        return result
    }
}

print(Solution().maxProfit([7, 1, 5, 3, 6, 4]))
print(Solution().maxProfit([1, 2, 3, 4, 5]))
print(Solution().maxProfit([7, 6, 4, 3, 1]))
