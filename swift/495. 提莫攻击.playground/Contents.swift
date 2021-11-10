/**
 495. 提莫攻击
 https://leetcode-cn.com/problems/teemo-attacking/
 */
class Solution {
    func findPoisonedDuration(_ timeSeries: [Int], _ duration: Int) -> Int {
        
        guard timeSeries.count > 1 else {
            return duration
        }
        var res = duration
        
        for i in 1 ..< timeSeries.count {
            let time = timeSeries[i] - timeSeries[i - 1]
            res += min(duration, time)
        }
        return res
    }
}

print(Solution().findPoisonedDuration([1, 4], 2))
