/**
 剑指 Offer 58 - I. 翻转单词顺序
 https://leetcode-cn.com/problems/fan-zhuan-dan-ci-shun-xu-lcof/
 */
import UIKit

class Solution {
    func reverseWords(_ s: String) -> String {
        let array = s.split(separator: " ")

        var resultArray = [String]()
        for sub in array.reversed() {
            resultArray.append(String(sub))
        }

        return resultArray.joined(separator: " ")
    }
}

print(Solution().reverseWords("the sky is blue"))
