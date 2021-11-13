/*
 520. 检测大写字母
 https://leetcode-cn.com/problems/detect-capital/
 */

class Solution {
    func detectCapitalUse(_ word: String) -> Bool {
        let count = word.count

        if count <= 1 {
            return true
        }

        //! 统计大写个数
        var isUppercaseCount = 0
        for ch in word {
            if ch.isUppercase {
                isUppercaseCount += 1
            }
        }

        if isUppercaseCount == count || isUppercaseCount == 0 {
            //! 全部大写 或者全部小写
            return true
        } else if isUppercaseCount == 1, word[word.startIndex].isUppercase {
            //! 只有一个大写字母，且是首字母大写
            return true
        } else {
            return false
        }
    }
}

print(Solution().detectCapitalUse("LeetCode"))
print(Solution().detectCapitalUse("CHINA"))
