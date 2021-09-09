/**dart
 * 剑指 Offer 09. 用两个栈实现队列
 * https://leetcode-cn.com/problems/yong-liang-ge-zhan-shi-xian-dui-lie-lcof/
 */
class CQueue {
  var stack1 = <int>[];
  var stack2 = <int>[];

  CQueue() {}

  appendTail(int value) {
    stack1.add(value);
  }

  int deleteHead() {
    if (stack2.isEmpty) {
      while (!stack1.isEmpty) {
        var last = stack1.removeLast();
        stack2.add(last);
      }
    }

    if (stack2.isEmpty) {
      return -1;
    } else {
      return stack2.removeLast();
    }
  }
}

main(List<String> args) {
  var obj = CQueue();

  print(obj.deleteHead());
  print(obj.appendTail(5));
  print(obj.appendTail(2));
  print(obj.deleteHead());
  print(obj.deleteHead());
}
