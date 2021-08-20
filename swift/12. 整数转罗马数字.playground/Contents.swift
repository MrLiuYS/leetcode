/**
 12. 整数转罗马数字
 https://leetcode-cn.com/problems/integer-to-roman/
 */
import UIKit

class Solution {
    func intToRoman(_ num: Int) -> String {
        var remainder = num

        var result = ""

        let map: [(num: Int, str: String)] = [
            (1000, "M"), (900, "CM"),
            (500, "D"), (400, "CD"),
            (100, "C"), (90, "XC"),
            (50, "L"), (40, "XL"),
            (10, "X"), (9, "IX"),
            (5, "V"), (4, "IV"),
            (1, "I")
        ]

        for i in map {
            while remainder >= i.num {
                remainder -= i.num
                result += i.str
            }
            if remainder == 0 {
                break
            }
        }

        return result
    }
}

print(Solution().intToRoman(3))
print(Solution().intToRoman(4))
print(Solution().intToRoman(9))
