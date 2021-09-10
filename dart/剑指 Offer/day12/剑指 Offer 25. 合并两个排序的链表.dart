/**dart
 * 剑指 Offer 25. 合并两个排序的链表
 * https://leetcode-cn.com/problems/he-bing-liang-ge-pai-xu-de-lian-biao-lcof/
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
  ListNode? mergeTwoLists(ListNode? l1, ListNode? l2) {
    if (l1 == null) {
      return l2;
    }
    if (l2 == null) {
      return l1;
    }

    if (l1.val > l2.val) {
      l2.next = mergeTwoLists(l1, l2.next);
      return l2;
    } else {
      l1.next = mergeTwoLists(l1.next, l2);
      return l1;
    }
  }
}

main(List<String> args) {
  var nodea1 = ListNode(1);
  var nodea2 = ListNode(2);
  var nodea3 = ListNode(4);
  nodea1.next = nodea2;
  nodea2.next = nodea3;

  var nodeb1 = ListNode(1);
  var nodeb2 = ListNode(3);
  var nodeb3 = ListNode(4);
  nodeb1.next = nodeb2;
  nodeb2 = nodeb3;

  var node = Solution().mergeTwoLists(nodea1, nodeb1);

  while (node != null) {
    print(node.val);
    node = node.next;
  }
}
