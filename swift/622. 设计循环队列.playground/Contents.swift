/**
 622. 设计循环队列
 https://leetcode-cn.com/problems/design-circular-queue/
 */
class MyCircularQueue {
    var _nums: [Int]
    
    var rear = 0
    var front = 0
    var length = 0
    
    init(_ k: Int) {
        _nums = Array(repeating: -1, count: k)
        length = k
    }
    
    func enQueue(_ value: Int) -> Bool {
        // 如果满了.直接返回
        guard !isFull() else {
            return false
        }
        
        _nums[rear] = value
        
        if rear + 1 >= length {
            rear = 0
        } else {
            rear += 1
        }
        
        return true
    }
    
    func deQueue() -> Bool {
        // 空队列直接返回false
        guard !isEmpty() else {
            return false
        }
        
        _nums[front] = -1
        
        // 循环队列 , 队头指向下一个
        if front + 1 >= length {
            front = 0
        } else {
            front += 1
        }
        
        return true
    }
    
    func Front() -> Int {
        return _nums[front] != -1 ? _nums[front] : -1
    }
    
    func Rear() -> Int {
        let last = rear - 1 < 0 ? length - 1 : rear - 1
        
        return _nums[last]
    }
    
    func isEmpty() -> Bool {
        return front == rear && _nums[rear] == -1
    }
    
    func isFull() -> Bool {
        return front == rear && _nums[rear] != -1
    }
}

let obj = MyCircularQueue(8)
obj.enQueue(3)
obj.enQueue(9)
obj.enQueue(5)
obj.enQueue(0)
obj.deQueue()
obj.deQueue()
obj.isEmpty()
obj.isEmpty()
obj.Rear()

// let obj = MyCircularQueue(3)
// obj.enQueue(1)
// obj.enQueue(2)
// obj.enQueue(3)
// obj.enQueue(4)
// obj.Rear()
// obj.isFull()
// obj.deQueue()
// obj.enQueue(4)
// obj.Rear()
