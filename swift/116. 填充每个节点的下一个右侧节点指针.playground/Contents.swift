/**
 116. 填充每个节点的下一个右侧节点指针
 https://leetcode-cn.com/problems/populating-next-right-pointers-in-each-node/
 */

public class Node {
    public var val: Int
    public var left: Node?
    public var right: Node?
    public var next: Node?
    public init(_ val: Int) {
        self.val = val
        self.left = nil
        self.right = nil
        self.next = nil
    }
}

class Solution {
    func connect(_ root: Node?) -> Node? {
        guard root != nil else {
            return nil
        }
        
        bfs(root, nil)
        
        return root
    }
    
    func bfs(_ root: Node?, _ next: Node?) {
        guard root != nil else {
            return
        }
        root?.next = next
        
        bfs(root?.left, root?.right)
        bfs(root?.right, root?.next?.left)
    }
}
