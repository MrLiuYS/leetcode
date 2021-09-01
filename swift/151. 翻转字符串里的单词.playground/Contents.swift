/**
 151. 翻转字符串里的单词
 https://leetcode-cn.com/problems/reverse-words-in-a-string/
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

print(Solution().reverseWords(" the sky is blue "))
