/*
 876. 链表的中间结点
 https://leetcode-cn.com/problems/middle-of-the-linked-list/
 */

public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init() { self.val = 0; self.next = nil }
    public init(_ val: Int) { self.val = val; self.next = nil }
    public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next }
}

class Solution {
    func middleNode(_ head: ListNode?) -> ListNode? {
        var low = head
        var fast = head

        while low != nil, fast?.next != nil {
            // 慢指针走一步
            low = low?.next
            // 快指针走两步
            fast = fast?.next?.next
        }

        return low
    }
}

let node5 = ListNode(5)
let node4 = ListNode(4, node5)
let node3 = ListNode(3, node4)
let node2 = ListNode(2, node3)
let node1 = ListNode(1, node2)

var result = Solution().middleNode(node1)

while result != nil || result?.next != nil {
    print(result?.val as Any)
    result = result?.next
}
