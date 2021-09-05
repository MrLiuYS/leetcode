/**
 剑指 Offer 28. 对称的二叉树
 https://leetcode-cn.com/problems/dui-cheng-de-er-cha-shu-lcof/
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
    func isSymmetric(_ root: TreeNode?) -> Bool {
        guard let root = root else {
            return true
        }

        return isSame(left: root.left, right: root.right)
    }

    func isSame(left: TreeNode?, right: TreeNode?) -> Bool {
        if left == nil, right == nil {
            return true
        }
        if left == nil || right == nil {
            return false
        }
        if left?.val != right?.val {
            return false
        }

        return isSame(left: left?.left, right: right?.right) && isSame(left: left?.right, right: right?.left)
    }
}

let nodel3 = TreeNode(3)
let noder3 = TreeNode(3)
let nodel4 = TreeNode(4)
let noder4 = TreeNode(4)

let nodel2 = TreeNode(2, nodel3, noder4)
let noder2 = TreeNode(2, nodel4, noder3)

let root1 = TreeNode(1, nodel2, noder2)

// let node5 = TreeNode(2)
// let node4 = TreeNode(2)
// let node3 = TreeNode(2, node5, nil)
// let node2 = TreeNode(2, node4, nil)
//
// let root1 = TreeNode(1, node2, node3)

print(Solution().isSymmetric(root1))
