/**
 剑指 Offer 26. 树的子结构
 https://leetcode-cn.com/problems/shu-de-zi-jie-gou-lcof/
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
    func isSubStructure(_ A: TreeNode?, _ B: TreeNode?) -> Bool {
        if A == nil, B == nil {
            return true
        } else if A != nil, B != nil {
            if A!.val == B!.val {
                if isEqual(A, B) {
                    return true
                }
            }
            if isSubStructure(A?.left, B) {
                return true
            }
            return isSubStructure(A?.right, B)
        }
        return false
    }

    func isEqual(_ A: TreeNode?, _ B: TreeNode?) -> Bool {
        if A == nil, B == nil {
            return true
        } else if A != nil, B != nil {
            return A!.val == B!.val && isEqual(A?.left, B?.left) && isEqual(A?.right, B?.right)
        } else if A != nil, B == nil {
            return true
        } else {
            return false
        }
    }
}

var node3 = TreeNode(3)
var node5 = TreeNode(5)
var node4 = TreeNode(4)
var node1 = TreeNode(1)
var node2 = TreeNode(2)

node3.left = node4
node3.right = node5
node4.left = node1
node4.right = node2

var nodeb_4 = TreeNode(4)
var nodeb_1 = TreeNode(1)

nodeb_4.left = nodeb_1

print(Solution().isSubStructure(node3, nodeb_4))
