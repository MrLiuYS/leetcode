/**
 剑指 Offer 32 - II. 从上到下打印二叉树 II
 https://leetcode-cn.com/problems/cong-shang-dao-xia-da-yin-er-cha-shu-ii-lcof/
 */
import UIKit

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
    var resArr = [[Int]]()
    func levelOrder(_ root: TreeNode?) -> [[Int]] {
        guard let root = root else {
            return []
        }
        bfs(root, 0)

        return resArr
    }

    func bfs(_ root: TreeNode?, _ level: Int) {
        guard let root = root else {
            return
        }
        if resArr.count == level {
            resArr.append([])
        }

        resArr[level].append(root.val)

        bfs(root.left, level + 1)
        bfs(root.right, level + 1)
    }
}

var node3 = TreeNode(3)
var node9 = TreeNode(9)
var node20 = TreeNode(20)
var node15 = TreeNode(15)
var node7 = TreeNode(7)

node3.left = node9
node3.right = node20
node20.left = node15
node20.right = node7

print(Solution().levelOrder(node3))
