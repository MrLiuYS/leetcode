/**
 剑指 Offer 62. 圆圈中最后剩下的数字
 https://leetcode-cn.com/problems/yuan-quan-zhong-zui-hou-sheng-xia-de-shu-zi-lcof/
 */
class Solution {
    func lastRemaining(_ n: Int, _ m: Int) -> Int {
        return f(n, m)
    }
    func f(_ n: Int, _ m: Int) -> Int {
        if n == 1 {
            return 0
        }
        return (m + f(n-1,m)) % n
    }
}

print(Solution().lastRemaining(5, 3))
