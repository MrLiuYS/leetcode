/**
 557. 反转字符串中的单词 III
 https://leetcode-cn.com/problems/reverse-words-in-a-string-iii/
 */

class Solution {
    func reverseWords(_ s: String) -> String {
        // 字符串翻转
        let reversed = String(s.reversed())

        // 分割
        let array = reversed.split(separator: " ")

        // 根据分割的数组.翻转.拼成字符串
        let result = array.reversed().joined(separator: " ")

        return result
    }
}

print(Solution().reverseWords("Let's take LeetCode contest"))

/**
 输入："Let's take LeetCode contest"
 输出："s'teL ekat edoCteeL tsetnoc"
 */
