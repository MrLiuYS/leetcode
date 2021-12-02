/**
 3. 无重复字符的最长子串
 https://leetcode-cn.com/problems/longest-substring-without-repeating-characters/
 */

class Solution {
    func lengthOfLongestSubstring(_ s: String) -> Int {
        if s.count < 2 {
            return s.count
        }

        var left = 0

        var result = 0

        // 字符: 所在位置的下标
        var map = [Character: Int]()

        for (index, char) in s.enumerated() {
            // 如果存在
            let pIndex = map[char] ?? -1

            if pIndex >= left {
                left = pIndex + 1
            }

            result = max(result, index - left + 1)

            map[char] = index
        }
        return result
    }
}

print(Solution().lengthOfLongestSubstring("pwwkew"))
