/*
 https://leetcode-cn.com/problems/linked-list-cycle/
 判断是否有环.使用快慢指针
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

var solution = Solution()

var node0 = Solution.ListNode(3)
var node1 = Solution.ListNode(2)
var node2 = Solution.ListNode(0)
var node3 = Solution.ListNode(-4)

node0.next = node1
node1.next = node2
node2.next = node3
node3.next = node1

solution.hasCycle(node0);



