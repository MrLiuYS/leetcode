/**
 242. 有效的字母异位词
 https://leetcode-cn.com/problems/valid-anagram/
 */

import UIKit

class Solution {
//    func isAnagram(_ s: String, _ t: String) -> Bool {
//        /// 复杂度大
//        return s.sorted() == t.sorted()
//    }

    func isAnagram(_ s: String, _ t: String) -> Bool {
        if s.count != t.count {
            return false
        }

        var sMap = [Character: Int]()
        for char in s {
            if sMap[char] == nil {
                sMap[char] = 0
            }
            sMap[char]! += 1
        }
        for char in t {
            if sMap[char] == nil {
                return false
            }
            sMap[char]! -= 1

            if sMap[char]! < 0 {
                return false
            }
        }

        return true
    }
}

print(Solution().isAnagram("anagram", "nagaram"))
