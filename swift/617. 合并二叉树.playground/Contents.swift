/**
 617. 合并二叉树
 https://leetcode-cn.com/problems/merge-two-binary-trees/
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
    func mergeTrees(_ root1: TreeNode?, _ root2: TreeNode?) -> TreeNode? {
        guard let root1 = root1 else {
            return root2
        }

        guard let root2 = root2 else {
            return root1
        }

        let root = TreeNode(root1.val + root2.val)

        root.left = mergeTrees(root1.left, root2.left)
        root.right = mergeTrees(root1.right, root2.right)

        return root
    }
}

let a5 = TreeNode(5)
let a2 = TreeNode(2)
let a3 = TreeNode(3, a5, nil)
let a1 = TreeNode(1, a3, a2)

let b4 = TreeNode(4)
let b7 = TreeNode(7)
let b1 = TreeNode(1, nil, b4)
let b3 = TreeNode(3, nil, b7)
let b2 = TreeNode(2, b1, b3)

var result = Solution().mergeTrees(a1, b2)

func bfs(_ root: TreeNode?) {
    guard root != nil else {
        return
    }

    print(root?.val as Any)

    bfs(root?.left)
    bfs(root?.right)
}

bfs(result)
