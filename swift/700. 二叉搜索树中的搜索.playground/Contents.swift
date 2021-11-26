/**
 700. 二叉搜索树中的搜索
 https://leetcode-cn.com/problems/search-in-a-binary-search-tree/
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

// 2利用二叉搜索特性
class Solution {
    func searchBST(_ root: TreeNode?, _ val: Int) -> TreeNode? {
        if let rVal = root?.val {
            if rVal == val {
                return root
            } else if rVal > val {
                return searchBST(root?.left, val)
            } else if rVal < val {
                return searchBST(root?.right, val)
            }
        }

        return nil
    }
}

//// 1暴力解法
// class Solution {
//    func searchBST(_ root: TreeNode?, _ val: Int) -> TreeNode? {
//        guard root != nil else {
//            return nil
//        }
//
//        if root?.val == val {
//            return root
//        }
//
//        let left = searchBST(root?.left, val)
//
//        if left != nil {
//            return left
//        }
//        let right = searchBST(root?.right, val)
//
//        if right != nil {
//            return right
//        }
//
//        return nil
//    }
// }

let node1 = TreeNode(1)
let node3 = TreeNode(3)
let node2 = TreeNode(2, node1, node3)
let node7 = TreeNode(7)
let node4 = TreeNode(4, node2, node7)

print(Solution().searchBST(node4, 2)?.val as Any)
