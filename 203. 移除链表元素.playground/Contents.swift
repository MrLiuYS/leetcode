/*
 https://leetcode-cn.com/problems/remove-linked-list-elements/
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
    
    func removeElements(_ head: ListNode?, _ val: Int) -> ListNode? {

        if head == nil || head?.next == nil {
            return head
        }
        
        var  result = head;

        while result != nil || result?.next != nil {
            
            if result?.val == val {
                result?.val = result?.next?.val as! Int
                result?.next = result?.next?.next
            }else {
                result = result?.next;
            }
            
        }
        
        return result;
        
    }
}
