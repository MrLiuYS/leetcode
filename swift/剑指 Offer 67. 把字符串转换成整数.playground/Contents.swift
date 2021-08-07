/**
 剑指 Offer 67. 把字符串转换成整数
 https://leetcode-cn.com/problems/ba-zi-fu-chuan-zhuan-huan-cheng-zheng-shu-lcof/
 */

import UIKit

class Solution {
    func strToInt(_ s: String) -> Int {
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

print(Solution().strToInt("  +  413"))
print(Solution().strToInt("   +0 123"))
print(Solution().strToInt("42"))
print(Solution().strToInt("   -42"))
print(Solution().strToInt("4193 with words"))
print(Solution().strToInt("words and 987"))
print(Solution().strToInt("-91283472332"))
print(Solution().strToInt("+-12"))
print(Solution().strToInt("-+12"))
