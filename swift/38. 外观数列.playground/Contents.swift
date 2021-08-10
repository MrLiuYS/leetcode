/**
 38. 外观数列
 https://leetcode-cn.com/problems/count-and-say/
 */
import UIKit

class Solution {
    func countAndSay(_ n: Int) -> String {
        if n == 0 {
            return ""
        } else if n == 1 {
            return "1"
        } else {
            let frontStr = countAndSay(n - 1)
            var str: String = ""
            var count = 1
            var start = frontStr[frontStr.index(frontStr.startIndex, offsetBy: 0)]
            for i in 1 ..< frontStr.count {
                let current = frontStr[frontStr.index(frontStr.startIndex, offsetBy: i)]
                if current == start {
                    count += 1
                } else {
                    str.append("\(count)\(start)")
                    start = current
                    count = 1
                }
            }
            str.append("\(count)\(start)")
            return str
        }
    }
}

print(Solution().countAndSay(5))
