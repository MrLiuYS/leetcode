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

var solution = Solution()

var node0 = Solution.ListNode(1)
var node1 = Solution.ListNode(2)
var node2 = Solution.ListNode(3)
var node3 = Solution.ListNode(4)
var node4 = Solution.ListNode(5)

node0.next = node1
node1.next = node2
node2.next = node3
node3.next = node4

solution.reverseList(node0);
