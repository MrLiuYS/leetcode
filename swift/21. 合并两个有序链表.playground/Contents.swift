/**
 21. 合并两个有序链表
 https://leetcode-cn.com/problems/merge-two-sorted-lists/
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
    func mergeTwoLists(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
        if l1 == nil {
            return l2
        }
        if l2 == nil {
            return l1
        }

        if l1!.val > l2!.val {
            l2?.next = mergeTwoLists(l1, l2!.next)
            return l2
        } else {
            l1?.next = mergeTwoLists(l1?.next, l2)
            return l1
        }
    }
}

var lista_1 = ListNode(1)
var lista_2 = ListNode(2)
var lista_3 = ListNode(4)

var listb_1 = ListNode(1)
var listb_2 = ListNode(3)
var listb_3 = ListNode(4)

lista_1.next = lista_2

lista_2.next = lista_3

listb_1.next = listb_2

listb_2.next = listb_3

var node = Solution().mergeTwoLists(lista_1, listb_1)
while node != nil || node?.next != nil {
    print(node?.val)
    node = node?.next
}
