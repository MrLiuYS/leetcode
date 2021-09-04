/**
 剑指 Offer 32 - III. 从上到下打印二叉树 III
 https://leetcode-cn.com/problems/cong-shang-dao-xia-da-yin-er-cha-shu-iii-lcof/
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
    func levelOrder(_ root: TreeNode?) -> [[Int]] {
        guard let root = root else {
            return []
        }
        var res = [[Int]]()
        var nodes = [TreeNode]()
        nodes.append(root)
        var flag = true
        while nodes.count > 0 {
            var arr = [TreeNode]()
            var temp = [Int]()
            for i in 0 ..< nodes.count {
                if flag {
                    let node = nodes[i]
                    temp.append(node.val)
                } else {
                    let node = nodes[nodes.count - i - 1]
                    temp.append(node.val)
                }
                let node = nodes[i]
                if node.left != nil { arr.append(node.left!) }
                if node.right != nil { arr.append(node.right!) }
            }
            res.append(temp)
            nodes = arr
            flag = !flag
        }
        return res
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
