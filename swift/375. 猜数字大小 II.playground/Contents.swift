/**
 375. 猜数字大小 II
 https://leetcode-cn.com/problems/guess-number-higher-or-lower-ii/
 */

class Solution {
    func getMoneyAmount(_ n: Int) -> Int {
        
        var sign = [[Int]](repeating: [Int](repeating: 0, count: n + 1), count: n + 1)
        
        func calculate(_ left: Int, _ right: Int) -> Int {
            guard left < right else {
                return 0
            }
            
            if sign[left][right] != 0 {
                return sign[left][right]
            }
            
            var minres = Int.max
            let mid = (left + right) / 2
            for i in mid...right {
                let res = i + max(calculate(i + 1, right), calculate(left, i - 1))
                minres = min(res, minres)
            }
            sign[left][right] = minres
            return minres
        }
        
        return calculate(1, n)
    }
}


print(Solution().getMoneyAmount(10))
