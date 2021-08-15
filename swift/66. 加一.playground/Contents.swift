/**
 66. 加一
 https://leetcode-cn.com/problems/plus-one/
 */

import UIKit

class Solution {
    func plusOne(_ digits: [Int]) -> [Int] {
        var result = digits
        
        result[result.count - 1] += 1
        
        for index in (0 ..< result.count).reversed() {
            if result[index] == 10 {
                result[index] = 0
                if index > 0 {
                    result[index - 1] += 1
                }
            } else {
                break
            }
        }
        
        if result[0] == 0 {
            result.insert(1, at: 0)
        }
        
        return result
    }
}

print(Solution().plusOne([9, 9, 9]))
