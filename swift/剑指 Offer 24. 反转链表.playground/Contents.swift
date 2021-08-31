/**
 剑指 Offer 24. 反转链表
 https://leetcode-cn.com/problems/fan-zhuan-lian-biao-lcof/
 */
import UIKit

public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init(_ val: Int) {
        self.val = val
        self.next = nil
    }
}

class Solution {
    func reverseList(_ head: ListNode?) -> ListNode? {
        guard head != nil else {
            return nil
        }

        var _head = head

        var pre: ListNode?
        var cur: ListNode?

        while _head != nil {
            cur = _head
            _head = _head!.next
            cur!.next = pre
            pre = cur
        }

        return pre
    }
}

var node1 = ListNode(1)
var node2 = ListNode(2)
var node3 = ListNode(3)
var node4 = ListNode(4)
var node5 = ListNode(5)

node1.next = node2
node2.next = node3
node3.next = node4
node4.next = node5

var node: ListNode? = Solution().reverseList(node1)

while node != nil {
    print(node?.val)

    node = node?.next
}
