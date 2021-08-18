/**
 104. 二叉树的最大深度
 https://leetcode-cn.com/problems/maximum-depth-of-binary-tree/
 */

import UIKit

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
    func maxDepth(_ root: TreeNode?) -> Int {
        guard let root = root else {
            return 0
        }

        return max(maxDepth(root.left), maxDepth(root.right)) + 1
    }
}

let node15 = TreeNode(15)
let node7 = TreeNode(7)
let node20 = TreeNode(20, node15, node7)
let node9 = TreeNode(9)
let node3 = TreeNode(3, node9, node20)

print(Solution().maxDepth(node3))
