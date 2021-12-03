/**
 567. 字符串的排列
 https://leetcode-cn.com/problems/permutation-in-string/
 */

class Solution {
    func checkInclusion(_ s1: String, _ s2: String) -> Bool {
        //1 s2长度小于s1 肯定不是
        if s2.count < s1.count {
            return false
        } else {
            // 滑动窗口
            var dic1: [Character: Int] = [:]
            for char in s1 {
                dic1.updateValue((dic1[char] ?? 0) + 1, forKey: char)
            }

            let arr2 = Array(s2)

            for index in 0 ... (arr2.count - s1.count) {
                let from = index
                let to = index + s1.count
                let temp = arr2[from ..< to]
                // 用来比较的滑动窗口
                var dic2: [Character: Int] = [:]
                for tempChar in temp {
                    dic2.updateValue((dic2[tempChar] ?? 0) + 1, forKey: tempChar)
                }
                if dic2 == dic1 {
                    return true
                }
            }
            return false
        }
    }
}

print(Solution().checkInclusion("ab", "eidbaooo"))
