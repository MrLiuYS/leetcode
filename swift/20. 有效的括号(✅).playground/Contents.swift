/*
 https://leetcode-cn.com/problems/valid-parentheses/
 */

import UIKit

class Solution {
    func isValid(_ s: String) -> Bool {
        
        var stack = [Character]()
        
        for c in s {
            if c=="[" || c == "(" || c == "{" {
                stack.append(c)
            }else {
                if stack.isEmpty {
                    return false
                }
                let left = stack.last!
                stack.removeLast()
                if (left == "[" && c != "]") {
                    return false
                }
                if (left == "(" && c != ")") {
                    return false
                }
                if (left == "{" && c != "}") {
                    return false
                }
            }
        }
        
        return stack.isEmpty
    }
    
}


var solution = Solution()

solution.isValid("")
solution.isValid("]")
solution.isValid("][()]")

