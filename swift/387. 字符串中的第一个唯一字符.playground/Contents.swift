/**
 387. 字符串中的第一个唯一字符
 https://leetcode-cn.com/problems/first-unique-character-in-a-string/
 */

import UIKit

class Solution {
    func firstUniqChar(_ s: String) -> Int {
        let chars = Array(s)

        var map = [Character: Int]()

        for char in chars {
            if map[char] != nil {
                map[char] = map[char]! + 1
            } else {
                map[char] = 1
            }
        }

        for index in 0 ..< chars.count {
            if map[chars[index]] == 1 {
                return index
            }
        }

        return -1
    }
}

print(Solution().firstUniqChar("loveleetcode"))
