/**
 125. 验证回文串
 https://leetcode-cn.com/problems/valid-palindrome/
 */

import UIKit

class Solution {
    func isPalindrome(_ s: String) -> Bool {
        let chars = Array(s.lowercased())
        var left = 0, right = chars.count - 1
        while left < right {
            if !chars[left].isLetter, !chars[left].isNumber {
                left += 1
                continue
            }
            if !chars[right].isLetter, !chars[right].isNumber {
                right -= 1
                continue
            }
            print("\(chars[left]) -- \(chars[right])")
            if chars[left] != chars[right] {
                return false
            }
            left += 1
            right -= 1
        }

        return true
    }
}

print(Solution().isPalindrome("A man, a plan, a canal: Panama"))

print(Solution().isPalindrome("010"))
