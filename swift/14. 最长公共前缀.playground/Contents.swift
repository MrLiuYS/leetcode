/**
 14. 最长公共前缀
 https://leetcode-cn.com/problems/longest-common-prefix/
 */

import UIKit

class Solution {
    func longestCommonPrefix(_ strs: [String]) -> String {
        if strs.count <= 1  {
            return strs.first ?? ""
        }

        var result = ""
        let numbers = strs.sorted()
        let first = numbers.first!
        let last = numbers.last!

        let lastArray = Array(last)
        for (index, firstChar) in first.enumerated() {
            if lastArray[index] != firstChar {
                return result
            }

            result += String(firstChar)
        }

        return result
    }
}

print(Solution().longestCommonPrefix([]))
print(Solution().longestCommonPrefix(["dog"]))
print(Solution().longestCommonPrefix(["dog", "racecar", "car"]))
