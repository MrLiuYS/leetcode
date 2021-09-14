/**
 剑指 Offer 34. 二叉树中和为某一值的路径
 https://leetcode-cn.com/problems/er-cha-shu-zhong-he-wei-mou-yi-zhi-de-lu-jing-lcof/
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
    // 递归遍历调用的函数，前序遍历
    func findPath(_ root: TreeNode?, _ target: Int, _ result: inout [[Int]], _ stack: inout [Int], _ sum: inout Int) {
        guard let rootNode = root else { // 判空处理
            return
        }

        stack.append(rootNode.val) // 入栈
        sum += rootNode.val // 累计和值

        let isYeNode = rootNode.left == nil && rootNode.right == nil
        if sum == target, isYeNode { // 为叶子节点且和为目标值，加入打印结果
            result.append(stack) // 当一条线走完后，再回溯到顶点的时候走另一条线的时候，栈中的元素会被情况了，sum的值照样回到了远点0
        }

        if rootNode.left != nil { // 递归调用便利左子树
            findPath(rootNode.left, target, &result, &stack, &sum)
        }

        if rootNode.right != nil { // 递归调用便利右子树
            findPath(rootNode.right, target, &result, &stack, &sum)
        }

        stack.removeLast() // 回溯一个一个节点
        sum -= rootNode.val // 累计的和照样回溯一个节点的值
    }

    func pathSum(_ root: TreeNode?, _ target: Int) -> [[Int]] {
        guard root != nil else { // 判空处理
            return [[Int]]()
        }

        // 存储结果的数组
        var result = [[Int]]()
        // 记录路径的栈
        var stack = [Int]()
        // 路径结果和
        var sum = 0
        // 调用函数
        findPath(root, target, &result, &stack, &sum)

        return result
    }
}
