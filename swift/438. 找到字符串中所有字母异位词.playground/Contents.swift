/**
 438. 找到字符串中所有字母异位词
 https://leetcode-cn.com/problems/find-all-anagrams-in-a-string/
 */
import UIKit

class Solution {
    func findAnagrams(_ s: String, _ p: String) -> [Int] {
        // 1 s为空直接返回
        guard s.count > 0 else { return [] }

        let sArr = Array(s)

        var neets = [Character: Int]()

        for char in p {
            neets[char, default: 0] += 1
        }
        // 窗口
        var window = [Character: Int]()

        var left = 0

        var result = [Int]()

        for (index, char) in s.enumerated() {
            window[char, default: 0] += 1

            let windowSize = index - left + 1

            // 保持窗口大小
            if windowSize >= p.count {
                let value = sArr[left]

                if isSame(a: neets, b: window) {
                    result.append(left)
                }

                if let count = window[value], count > 1 {
                    window[value] = window[value]! - 1
                } else {
                    window.removeValue(forKey: value)
                }

                left += 1
            }
        }

        return result
    }

    func isSame(a: [Character: Int], b: [Character: Int]) -> Bool {
        for element in a {
            if b[element.key] != element.value {
                return false
            }
        }
        return true
    }
}

print(Solution().findAnagrams("cbaebabacd", "abc"))
print(Solution().findAnagrams("abab", "ab"))
