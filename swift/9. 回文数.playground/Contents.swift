/**
 9. 回文数
 https://leetcode-cn.com/problems/palindrome-number/
 */

class Solution {
    func isPalindrome(_ x: Int) -> Bool {
        let chars = Array("\(x)")
        var left = 0, right = chars.count - 1
        while left < right {
            if chars[left] != chars[right] {
                return false
            }
            left += 1
            right -= 1
        }

        return true
    }
}

print(Solution().isPalindrome(1212))
