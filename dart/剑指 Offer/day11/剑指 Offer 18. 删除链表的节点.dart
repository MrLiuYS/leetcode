/**dart
 * 剑指 Offer 18. 删除链表的节点
 * https://leetcode-cn.com/problems/shan-chu-lian-biao-de-jie-dian-lcof/
 */

class ListNode {
  late int val;
  ListNode? next;
  ListNode(int val) {
    this.val = val;
    this.next = null;
  }
}

class Solution {
  ListNode? deleteNode(ListNode? head, int val) {
    if (head == null) {
      return null;
    } else if (head.next != null && head.val == val) {
      return head.next;
    } else {
      ListNode? _head = head;

      while (_head?.next != null) {
        if (_head?.next?.val == val) {
          _head?.next = _head.next?.next;
        }
        _head = _head?.next;
      }
      return head;
    }
  }
}

main(List<String> args) {
  var node4 = ListNode(4);
  var node5 = ListNode(5);
  var node1 = ListNode(1);
  var node9 = ListNode(9);

  node4.next = node5;
  node5.next = node1;
  node1.next = node9;

  // var node = Solution().deleteNode(node4, 5);
  var node = Solution().deleteNode(node4, 1);

  while (node != null) {
    print(node.val);
    node = node.next;
  }
}
