/**
 234. 回文链表
 https://leetcode-cn.com/problems/palindrome-linked-list/
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
    func isPalindrome(_ head: ListNode?) -> Bool {
        if head == nil {
            return false
        }
        if head?.next == nil {
            return true
        }

        var slow = head
        var fast = head

        while fast?.next != nil, fast?.next?.next != nil {
            slow = slow?.next
            fast = fast?.next?.next
        }

        slow = slow?.next

        var stack = [ListNode]()

        while slow != nil {
            stack.append(slow!)
            slow = slow?.next
        }

        slow = head

        while !stack.isEmpty {
            if slow?.val != stack.popLast()?.val {
                return false
            }
            slow = slow?.next
        }

        return true
    }
}

var list1 = ListNode(1)
var list2 = ListNode(2)
var list3 = ListNode(2)
var list4 = ListNode(1)

list1.next = list2

list2.next = list3

list3.next = list4

print(Solution().isPalindrome(list1))
