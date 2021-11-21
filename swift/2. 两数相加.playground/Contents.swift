/**
 2. 两数相加
 https://leetcode-cn.com/problems/add-two-numbers/
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
    func addTwoNumbers(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
        let result = ListNode(0)
                    
        var p: ListNode? = l1
        var q: ListNode? = l2
        var head = result
                    
        var carry = 0
        while (p != nil) || (q != nil) {
            let sum = (p?.val ?? 0) + (q?.val ?? 0) + carry
                        
            carry = sum / 10
            head.next = ListNode(sum % 10)
            head = head.next!
            p = p?.next
            q = q?.next
        }
                    
        if carry > 0 {
            head.next = ListNode(carry)
        }
                    
        return result.next
    }
}
