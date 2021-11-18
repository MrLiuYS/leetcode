/**
 563. 二叉树的坡度
 https://leetcode-cn.com/problems/binary-tree-tilt/
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
    var ans = 0
    func findTilt(_ root: TreeNode?) -> Int {
        guard let root = root else {
            return 0
        }
        depth(root)
        return ans
    }

    func depth(_ root: TreeNode?) -> Int {
        guard let root = root else {
            return 0
        }

        let leftAns = depth(root.left)
        let rightAns = depth(root.right)
        ans += abs(leftAns - rightAns)
        return leftAns+rightAns+root.val
    }
}

let node3 = TreeNode(3)
let node5 = TreeNode(5)
let node2 = TreeNode(2, node3, node5)
let node7 = TreeNode(7)
let node9 = TreeNode(9, nil, node7)

let node4 = TreeNode(4, node2, node9)
print(Solution().findTilt(node4))
