/**
 5. 最长回文子串
 https://leetcode-cn.com/problems/longest-palindromic-substring/
 */
import UIKit

class Solution {
    func longestPalindrome(_ s: String) -> String {
        if s.count < 2 {
            return s
        }
        let sArray = Array(s)
        
        var maxLen = 1
        
        var begin = 0
        
        var dp = [[Bool]](repeating: [Bool](repeating: false, count: s.count), count: s.count)
        
        for i in (0 ..< s.count).reversed() {
            for j in i ..< s.count {
                let len = (j - i + 1)
                dp[i][j] = (sArray[i] == sArray[j]) && (len <= 2 || dp[i + 1][j - 1])
                if dp[i][j], len > maxLen {
                    maxLen = len
                    begin = i
                }
            }
        }
        
        return String(sArray[begin ..< begin + maxLen])
    }
}

print(Solution().longestPalindrome("babad"))
print(Solution().longestPalindrome("cbbd"))
