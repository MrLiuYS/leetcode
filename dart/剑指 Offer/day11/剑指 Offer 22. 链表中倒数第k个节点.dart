/** 
 *  dart
 *  剑指 Offer 22. 链表中倒数第k个节点
 *  https://leetcode-cn.com/problems/lian-biao-zhong-dao-shu-di-kge-jie-dian-lcof/
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
  ListNode? getKthFromEnd(ListNode? head, int k) {
    var fast = head;

    for (var i = 0; i < k - 1; i++) {
      var node = fast?.next;
      if (node != null) {
        fast = node;
      } else {
        return null;
      }
    }
    var slow = head;

    while (fast?.next != null) {
      fast = fast?.next;
      slow = slow?.next;
    }

    return slow;
  }
}

main(List<String> args) {
  var node1 = ListNode(1);
  var node2 = ListNode(2);
  var node3 = ListNode(3);
  var node4 = ListNode(4);
  var node5 = ListNode(5);

  node1.next = node2;
  node2.next = node3;
  node3.next = node4;
  node4.next = node5;

  var node = Solution().getKthFromEnd(node1, 2);

  while (node != null) {
    print(node.val);
    node = node.next;
  }
}
