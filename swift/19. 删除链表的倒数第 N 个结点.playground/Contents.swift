
/**
 19. 删除链表的倒数第 N 个结点
 https://leetcode-cn.com/problems/remove-nth-node-from-end-of-list/
 */

import UIKit

public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init() { self.val = 0; self.next = nil }
    public init(_ val: Int) { self.val = val; self.next = nil }
    public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next }
}

class Solution {
    func removeNthFromEnd(_ head: ListNode?, _ n: Int) -> ListNode? {
        var slow = head
        var fast = head

        for _ in 0 ..< n {
            fast = fast?.next
        }

        if fast == nil {
            return head?.next
        }

        while fast?.next != nil {
            fast = fast?.next
            slow = slow?.next
        }

        slow?.next = slow?.next?.next

        return head
    }
}

var list1 = ListNode(1)
var list2 = ListNode(2)
var list3 = ListNode(3)
var list4 = ListNode(4)
var list5 = ListNode(5)

list1.next = list2

list2.next = list3

list3.next = list4

list4.next = list5

print(Solution().removeNthFromEnd(list1, 5)?.val)

// print(Solution().removeNthFromEnd([1, 2, 3, 4, 5], 2))
