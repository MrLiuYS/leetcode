/**
 1688. 比赛中的配对次数
 https://leetcode-cn.com/problems/count-of-matches-in-tournament/
 */

class Solution {
    func numberOfMatches(_ n: Int) -> Int {
        var n = n
        
        var result = 0
        
        while n > 1 {
            if n % 2 == 0 {
                n = n / 2
                
                result += n
                
            } else {
                n = (n - 1) / 2
                
                result += n
                
                n += 1
            }
        }
        
        return result
    }
}

print(Solution().numberOfMatches(7))
