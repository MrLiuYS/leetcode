/**
 剑指 Offer 25. 合并两个排序的链表
 https://leetcode-cn.com/problems/he-bing-liang-ge-pai-xu-de-lian-biao-lcof/
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

var nodea1 = ListNode(1)
var nodea2 = ListNode(2)
var nodea3 = ListNode(4)
nodea1.next = nodea2
nodea2.next = nodea3

var nodeb1 = ListNode(1)
var nodeb2 = ListNode(3)
var nodeb3 = ListNode(4)
nodeb1.next = nodeb2
nodeb2.next = nodeb3

var node = Solution().mergeTwoLists(nodea1, nodeb1)

while node != nil {
    print(node?.val)
    node = node?.next
}
