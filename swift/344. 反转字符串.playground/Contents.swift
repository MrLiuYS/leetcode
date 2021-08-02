/**
 344. 反转字符串
 https://leetcode-cn.com/problems/reverse-string/
 */

import UIKit

class Solution {
    func reverseString(_ s: inout [Character]) {
        let length = s.count
        
        if length < 2 {
            return
        }
        
        var temp: Character
        
        for index in 0 ..< length / 2 {
            print(s[index])
            
            print(s[length - index - 1])
            
            temp = s[index]
            s[index] = s[length - index - 1]
            
            s[length - index - 1] = temp
        }
        
        print(s)
    }
}

var chat: [Character] = ["h", "e", "l", "l", "o"]

print(Solution().reverseString(&chat))
