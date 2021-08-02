/**
 7. 整数反转
 https://leetcode-cn.com/problems/reverse-integer/
 */

import UIKit

class Solution {
    func reverse(_ x: Int) -> Int {
        var result = 0

        var temp = x

        while temp != 0 {
            result = result * 10 + temp % 10

            if result > Int32.max || result < Int32.min {
                return 0
            }

            temp = temp / 10
        }

        return result
    }
}

print(Solution().reverse(1534236469))
