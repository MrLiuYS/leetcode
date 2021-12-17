/**
 1518. 换酒问题
 https://leetcode-cn.com/problems/water-bottles/
 */

class Solution {
    func numWaterBottles(_ numBottles: Int, _ numExchange: Int) -> Int {
        // 1.喝的瓶数 = 刚开始的瓶数
        // 2.刚开始的空瓶数= 刚开始的瓶数
        // 3.兑换瓶数 = 空瓶数 / 兑换率  剩余无法兑换的瓶数 = 空瓶数 % 兑换率
        // 4.喝的瓶数 += 兑换瓶数
        // 5.剩余瓶数 = 兑换瓶数 + 剩余无法兑换瓶数
        // 6.剩余瓶数 >= 兑换率. 进入3 . 否则跳出
        
        var numBottles = numBottles
        
        var result = numBottles
        
        while numBottles >= numExchange {
            let a = numBottles / numExchange, b = numBottles % numExchange
            
            result += a
            
            numBottles = a + b
        }
        
        return result
    }
}

print(Solution().numWaterBottles(9, 3))

