/**
 8. 字符串转换整数 (atoi)
 https://leetcode-cn.com/problems/string-to-integer-atoi/
 */

import UIKit

class Solution {
    func myAtoi(_ s: String) -> Int {
        var characters: [Character] = []
        
        var isNegative: Bool?
        
        for char in s {
            if char.isWhitespace, isNegative == nil {
                continue
            }
            
            else if char == "-", isNegative == nil {
                isNegative = true
            }
            else if char == "+", isNegative == nil {
                isNegative = false
            }
            else if char.isNumber {
                characters.append(char)
                if isNegative == nil {
                    isNegative = false
                }
            }
            else {
                break
            }
        }
        
        if characters.isEmpty {
            return 0
        }
        
        var result = Int(String(characters)) ?? Int.max
        
        if isNegative == true {
            result = -result
            
            if result < Int32.min {
                return Int(Int32.min)
            }
        }
        else {
            if result > Int32.max {
                return Int(Int32.max)
            }
        }
        
        return result
    }
}


print(Solution().myAtoi("  +  413"))
 print(Solution().myAtoi("   +0 123"))
// print(Solution().myAtoi("42"))
// print(Solution().myAtoi("   -42"))
// print(Solution().myAtoi("4193 with words"))
// print(Solution().myAtoi("words and 987"))
// print(Solution().myAtoi("-91283472332"))
// print(Solution().myAtoi("+-12"))
// print(Solution().myAtoi("-+12"))
