/**
 859. 亲密字符串
 https://leetcode-cn.com/problems/buddy-strings/
 */

class Solution {
    func buddyStrings(_ s: String, _ goal: String) -> Bool {
        // 1. 先判断长度是否一样.如果不一样直接返回false
        // 2. s.goal 如果相等. 判断词频.词数量小于s 的长度.所有里面存在有相同的词.则返回true
        // 3. 遍历数组.找出两个不一样的指针.如果没有两个不一样的指针返回false.
        // 两个指针进行交换对比.如果一样.就是true
        
        guard s.count == goal.count else {
            return false
        }
        
        if s == goal, Set(s).count < s.count {
            return true
        }
        
        var arr = [[Character]]()
        for (c1, c2) in zip(s, goal) {
            if c1 != c2 {
                if arr.count > 2 {
                    return false
                }
                arr.append([c1, c2])
            }
        }
        
        return arr.count == 2 && arr[0] == arr[1].reversed()
    }
}

print(Solution().buddyStrings("ab", "ba"))
print(Solution().buddyStrings("ab", "ab"))
print(Solution().buddyStrings("aa", "aa"))
