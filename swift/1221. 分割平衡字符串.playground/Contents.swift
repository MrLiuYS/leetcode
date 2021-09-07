/**
 1221. 分割平衡字符串
 https://leetcode-cn.com/problems/split-a-string-in-balanced-strings/
 */
import UIKit

class Solution {
    func balancedStringSplit(_ s: String) -> Int {
        var cnt = 0 , result = 0
        
        for c in s {
            cnt += c == "L" ? 1 : -1
            if cnt == 0 {
                result += 1
            }
        }
        return result
    }
}

print(Solution().balancedStringSplit("RLRRLLRLRL"))
print(Solution().balancedStringSplit("RLLLLRRRLR"))
print(Solution().balancedStringSplit("LLLLRRRR"))
