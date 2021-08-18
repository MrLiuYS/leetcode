
/**
 102. 二叉树的层序遍历
 https://leetcode-cn.com/problems/binary-tree-level-order-traversal/
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
    var result: [[Int]] = []

    func levelOrder(_ node: TreeNode, level: Int) {
        if result.count == level {
            result.append([node.val])
        } else {
            var tmp = result[level]
            tmp.append(node.val)
            result[level] = tmp
        }
        if let left = node.left {
            levelOrder(left, level: level + 1)
        }
        if let right = node.right {
            levelOrder(right, level: level + 1)
        }
    }

    func levelOrder(_ root: TreeNode?) -> [[Int]] {
        guard let root = root else {
            return []
        }
        levelOrder(root, level: 0)
        return result
    }
}

let node7 = TreeNode(7)
let node15 = TreeNode(15)
let node20 = TreeNode(20, node15, node7)
let node9 = TreeNode(9)
let node3 = TreeNode(3, node9, node20)

print(Solution().levelOrder(node3))
