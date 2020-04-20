/*
 https://leetcode-cn.com/problems/reverse-linked-list/
 */
import UIKit

class Solution {
    
    public class ListNode {
        public var val: Int
        public var next: ListNode?
        public init(_ val: Int) {
            self.val = val
            self.next = nil
        }
    }
    func reverseList(_ head: ListNode?) -> ListNode? {
        
        if head == nil || head?.next == nil {
            return head;
        }
        
        let newHead = reverseList(head?.next)
        
        head?.next?.next = head
        head?.next = nil
        
        return newHead
    }
}
