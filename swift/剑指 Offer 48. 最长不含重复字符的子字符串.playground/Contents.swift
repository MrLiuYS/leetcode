/**
 剑指 Offer 48. 最长不含重复字符的子字符串
 https://leetcode-cn.com/problems/zui-chang-bu-han-zhong-fu-zi-fu-de-zi-zi-fu-chuan-lcof/
 */
import UIKit

class Solution {
    func lengthOfLongestSubstring(_ s: String) -> Int {
        if s.isEmpty {
            return 0
        }
        
        var li = 0
        var si = 0
        var map = [Character: Int]()
        
        map[s.first!] = 0
        
        var maxLength = 1
        
        for (index, char) in s.enumerated() {
            if index == 0 {
                continue
            }
            
            li = map[char] ?? -1
            if li >= si {
                si = li + 1
            }
            maxLength = max(maxLength, index - si + 1)
            map[char] = index
        }
        
        return maxLength
    }
}

print(Solution().lengthOfLongestSubstring("abcabcbb"))

print(Solution().lengthOfLongestSubstring(" "))
