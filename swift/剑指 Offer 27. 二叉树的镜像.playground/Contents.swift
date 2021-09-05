/**
 剑指 Offer 27. 二叉树的镜像
 https://leetcode-cn.com/problems/er-cha-shu-de-jing-xiang-lcof/
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
    func mirrorTree(_ root: TreeNode?) -> TreeNode? {
        guard let root = root else {
            return nil
        }
        let right = mirrorTree(root.right)
        let left = mirrorTree(root.left)
        root.right = left
        root.left = right
        return root
    }
}
