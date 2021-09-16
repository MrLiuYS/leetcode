/**
 剑指 Offer 55 - II. 平衡二叉树
 https://leetcode-cn.com/problems/ping-heng-er-cha-shu-lcof/
 */
public class TreeNode {
    public var val: Int
    public var left: TreeNode?
    public var right: TreeNode?
    public init() { self.val = 0; self.left = nil; self.right = nil }
    public init(_ val: Int) { self.val = val; self.left = nil; self.right = nil }
    public init(_ val: Int, _ left: TreeNode?, _ right: TreeNode?) {
        self.val = val
        self.left = left
        self.right = right
    }
}

class Solution {
    func isBalanced(_ root: TreeNode?) -> Bool {
        return isBalancedB(root) != -1
    }
    func isBalancedB(_ root: TreeNode?) -> Int {
        if root == nil {
            return 0
        }
        
        let lDeep = isBalancedB(root?.left)
        if  lDeep == -1 {
            return -1
        }
        let rDeep = isBalancedB(root?.right)
        if  rDeep == -1 {
            return -1
        }
        
        if (lDeep - rDeep) <= 1 && (lDeep - rDeep) >= -1 {
            return max(lDeep, rDeep) + 1
        }
        return -1
    }
}

