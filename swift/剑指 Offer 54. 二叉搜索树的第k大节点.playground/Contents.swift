/**
 剑指 Offer 54. 二叉搜索树的第k大节点
 https://leetcode-cn.com/problems/er-cha-sou-suo-shu-de-di-kda-jie-dian-lcof/
 */
public class TreeNode {
    public var val: Int
    public var left: TreeNode?
    public var right: TreeNode?
    public init(_ val: Int) {
        self.val = val
        self.left = nil
        self.right = nil
    }
}

class Solution {
    var k = 0
    var res = 0

    func kthLargest(_ root: TreeNode?, _ k: Int) -> Int {
        self.k = k
        dfs(root)
        return res
    }

    func dfs(_ root: TreeNode?) {
        if root == nil { return }
        dfs(root?.right)
        if k == 0 { return }
        k -= 1
        if k == 0 {
            res = root?.val ?? 0
        }
        dfs(root?.left)
    }
}
