/*
 https://leetcode-cn.com/problems/linked-list-cycle/
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
    
    func hasCycle(_ head: ListNode?) -> Bool {
        
        if head == nil || head?.next == nil {
            return false
        }
        
        var snow = head
        var fast = head?.next
        while fast != nil || fast?.next != nil {
            snow = snow?.next
            fast = fast?.next?.next
            if snow === fast {
                return true
            }
        }
        return false;
        
    }
}
