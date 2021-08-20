/**
 13. 罗马数字转整数
 https://leetcode-cn.com/problems/roman-to-integer/
 */

import UIKit

class Solution {
    func romanToInt(_ s: String) -> Int {
        let dict: [Character: Int] = [
            "I": 1,
            "V": 5,
            "X": 10,
            "L": 50,
            "C": 100,
            "D": 500,
            "M": 1000,
        ]

        var result = 0

        var lastNum = 0

        for char in s {
            let num = dict[char]!
            result += num
            if num > lastNum {
                result -= 2 * lastNum
            }
            lastNum = num
        }

        return result
    }
}

print(Solution().romanToInt("IV"))
print(Solution().romanToInt("LVIII"))
