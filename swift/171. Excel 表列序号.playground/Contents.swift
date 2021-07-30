/**
 https://leetcode-cn.com/problems/excel-sheet-column-number/
 */

import UIKit

class Solution {
    func titleToNumber(_ columnTitle: String) -> Int {
        var number = 0

        let A = Int(Character("A").asciiValue!)

        for char in columnTitle {
            let num = Int(char.asciiValue!) - A + 1

            number = number * 26 + num
        }

        return number
    }
}

print(Solution().titleToNumber("AA"))
