/**
 383. 赎金信
 https://leetcode-cn.com/problems/ransom-note/
 */

class Solution {
    func canConstruct(_ ransomNote: String, _ magazine: String) -> Bool {
        if ransomNote.count > magazine.count {
            return false
        } else {
            var dic1: [Character: Int] = [:]
            for char in magazine {
                dic1.updateValue((dic1[char] ?? 0) + 1, forKey: char)
            }

            let arr2 = Array(ransomNote)

            for num in arr2 {
                if let value = dic1[num], value > 0 {
                    dic1[num] = value - 1
                } else {
                    return false
                }
            }
            return true
        }
    }
}

print(Solution().canConstruct("aa", "aab"))
