/**
 1154. 一年中的第几天
 https://leetcode-cn.com/problems/day-of-the-year/
 */

class Solution {
    func dayOfYear(_ date: String) -> Int {
        var monthDays = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]

        let time = date.split(separator: "-")
        
        let year = Int(time[0])!, month = Int(time[1])!, day = Int(time[2])!
        
        var result = 0
        
        if year % 400 == 0 || (year % 4 == 0 && year % 100 != 0) {
            monthDays[1] += 1
        }
        
        for m in 0 ..< month - 1 {
            result += monthDays[m]
        }
        
        return result + day
    }
}

//print(Solution().dayOfYear("2019-01-09"))
//
//print(Solution().dayOfYear("2019-02-10"))
//
//print(Solution().dayOfYear("2003-03-01"))

print(Solution().dayOfYear("2012-01-02"))

