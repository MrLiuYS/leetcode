/**
 98. 验证二叉搜索树
 https://leetcode-cn.com/problems/validate-binary-search-tree/
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
    var result = [Int]()

    func isValidBST(_ root: TreeNode?) -> Bool {
        guard let root = root else {
            return true
        }

        sortTree(root)

        for index in 0 ..< result.count - 1 {
            if result[index] >= result[index + 1] {
                return false
            }
        }

        return true
    }

    func sortTree(_ root: TreeNode?) {
        guard let root = root else {
            return
        }

        sortTree(root.left)
        result.append(root.val)
        sortTree(root.right)
    }
}

let node3 = TreeNode(3)
let node6 = TreeNode(6)
let node4 = TreeNode(4, node3, node6)
let node1 = TreeNode(1)
let node5 = TreeNode(5, node1, node4)

// let node2 = TreeNode(2)
// let node4 = TreeNode(4)
// let node6 = TreeNode(6, node2, node4)
// let node1 = TreeNode(1)
// let node5 = TreeNode(5, node1, node6)

print(Solution().isValidBST(node5))
