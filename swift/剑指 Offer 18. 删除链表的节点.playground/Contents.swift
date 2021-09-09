/**
 剑指 Offer 18. 删除链表的节点
 https://leetcode-cn.com/problems/shan-chu-lian-biao-de-jie-dian-lcof/
 */

public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init(_ val: Int) {
        self.val = val
        self.next = nil
    }
}

class Solution {
    func deleteNode(_ head: ListNode?, _ val: Int) -> ListNode? {
        if head == nil {
            return nil
        }
        if head?.next != nil, head?.val == val {
            return head?.next
        }

        var _head = head

        while _head?.next != nil {
            if _head?.next?.val == val {
                _head?.next = _head?.next?.next
            }
            _head = _head?.next
        }
        return head
    }
}

var node4 = ListNode(4)
var node5 = ListNode(5)
var node1 = ListNode(1)
var node9 = ListNode(9)

node4.next = node5
node5.next = node1
node1.next = node9

var node = Solution().deleteNode(node4, 1)

while node != nil {
    print(node?.val)
    node = node?.next
}
