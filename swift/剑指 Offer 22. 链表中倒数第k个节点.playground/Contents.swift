/**
 剑指 Offer 22. 链表中倒数第k个节点
 https://leetcode-cn.com/problems/lian-biao-zhong-dao-shu-di-kge-jie-dian-lcof/
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
    func getKthFromEnd(_ head: ListNode?, _ k: Int) -> ListNode? {
        var fast = head
        for _ in 0 ..< k - 1 {
            if let node = fast?.next {
                fast = node
            } else {
                return nil
            }
        }

        var slow = head
        while fast?.next != nil {
            fast = fast?.next
            slow = slow?.next
        }

        return slow
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

print(Solution().getKthFromEnd(node1, 20)?.val)
