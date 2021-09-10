/**
 剑指 Offer 52. 两个链表的第一个公共节点
 https://leetcode-cn.com/problems/liang-ge-lian-biao-de-di-yi-ge-gong-gong-jie-dian-lcof/
 */
import UIKit

class ListNode: Equatable {
    static func == (lhs: ListNode, rhs: ListNode) -> Bool {
        lhs === rhs
    }
    
    public var val: Int
    public var next: ListNode?
    public init(_ val: Int) {
        self.val = val
        self.next = nil
    }
}

class Solution {
    func getIntersectionNode(_ headA: ListNode?, _ headB: ListNode?) -> ListNode? {
        if headA == nil || headB == nil {
            return nil
        }

        var pA = headA, pB = headB

        while pA != pB {
            pA = pA == nil ? headB : pA?.next
            pB = pB == nil ? headA : pB?.next
        }

        return pA
    }
}

var nodea1 = ListNode(4)
var nodea2 = ListNode(1)
var nodea3 = ListNode(8)
var nodea4 = ListNode(4)
var nodea5 = ListNode(5)
nodea1.next = nodea2
nodea2.next = nodea3
nodea3.next = nodea4
nodea4.next = nodea5

var nodeb1 = ListNode(5)
var nodeb2 = ListNode(0)
var nodeb3 = ListNode(1)
nodeb1.next = nodeb2
nodeb2.next = nodeb3
nodeb3.next = nodea3

print(Solution().getIntersectionNode(nodea1, nodeb1)?.val)
