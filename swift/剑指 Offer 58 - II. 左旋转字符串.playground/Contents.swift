///
/// https://leetcode-cn.com/problems/zuo-xuan-zhuan-zi-fu-chuan-lcof/
///

import UIKit

class Solution {
    func reverseLeftWords(_ s: String, _ n: Int) -> String {
        let remainder = n % s.count

        let result = s.suffix(s.count - remainder) + s.prefix(remainder)

        return String(result)
    }
}

print(Solution().reverseLeftWords("abcdefg", 2))

print(Solution().reverseLeftWords("lrloseumgh", 6))

print(Solution().reverseLeftWords("tohozfldlpidfwrksdcvuezolmwblsrwesgwqpoykefiyuabluvwgzrkjvvwbvlrmytscrwayfhpzfesjinofljoarqhdgvtjeji", 99))

/*
 输入: s = "abcdefg", k = 2
 输出: "cdefgab"

 输入: s = "lrloseumgh", k = 6
 输出: "umghlrlose"
 */
