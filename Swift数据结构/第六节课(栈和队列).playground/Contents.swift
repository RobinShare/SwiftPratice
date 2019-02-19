//栈和队列

//区别：队列先进先出 栈先进后出

//一个有趣的现象
//print("hello", terminator: "")
//print(", xiaobo", terminator: "")
//print()



//定义节点
class Node {
    var value: Int!
    var previous: Node?
    var next: Node?
}

//定义链表
class Link {
    private var top: Node?
    private var current: Node?
    
    func get_count() -> Int {
        if top == nil {
            return 0
        } else {
            var count = 1
            var item = top
            while item!.next != nil {
                count += 1
                item = item!.next
            }
            return count
        }
    }
    
    func append(value: Int) {
        if top == nil {
            top = Node()
            top!.value = value
            current = top
        } else {
            let node = Node()
            node.value = value
            current!.next = node
            node.previous = current
            current = node
        }
    }
    
    func delete(index: Int) -> Int? {
        let count = get_count()
        if index >= count {
            return nil
        }
        if count == 1 {
            let res = top?.value
            top = nil
            current = nil
            return res
        }
        
        var item = top
        for _ in 0..<index {
            item = item!.next
        }
        
        item!.previous?.next = item!.next
        item!.next?.previous = item!.previous
        
        if current === item {
            current = item!.previous
        }
        
        if top === item {
            top = item!.next
        }
        
        return item!.value
    }
    
    func show() {
        var item = top
        while item != nil {
            print(item!.value, terminator: "->")
            item = item!.next
        }
        print()
    }
}

//队列
class Queue {
    private let link = Link()
    func push(value: Int) {
        link.append(value: value)
    }
    
    func pop() -> Int? {
        return link.delete(index: 0)
    }
    
    func count() -> Int {
        return link.get_count()
    }
    
    func showQueue() {
        link.show()
    }
}

//栈
class Stack {
    private let link = Link()
    
    func push(value: Int) {
        link.append(value: value)
    }
    func pop() -> Int? {
        return link.delete(index: link.get_count() - 1)
    }
    
    func count() -> Int {
        return link.get_count()
    }
    
    func showStack() {
        link.show()
    }
}

//队列测试
print("------以下是队列测试------")
let que = Queue()
que.push(value: 20)
que.push(value: 40)
que.push(value: 30)
que.showQueue()
que.pop()
que.showQueue()
que.pop()
que.showQueue()

//栈
print("------以下是栈测试(左边栈底)------")
let stack = Stack()
stack.push(value: 20)
stack.push(value: 40)
stack.push(value: 30)
stack.showStack()
stack.pop()
stack.showStack()
stack.pop()
stack.showStack()




//课后练习：其实在栈的实现中，节点并不需要有previous。
//请实现在节点只有value和next两个元素的情况下栈的实现代码。

//class Node {
//    var value: Int!
//    var next: Node?
//}
//
//class Stack {
//    var current: Node?
//    func push(value: Int) {
//        let node = Node()
//        node.value = value
//        node.next = current
//        current = node
//    }
//    func pop() -> Int? {
//        let res = current?.value
//        current = current?.next
//        return res
//    }
//
//    func count() -> Int {
//        var trans = current
//        var count = 0
//        while trans != nil {
//            count += 1
//            trans = trans?.next
//        }
//        return count
//    }
//
//    func showStack() {
//        var trans = current
//        while trans != nil {
//            print(trans!.value, terminator: "->")
//            trans = trans?.next
//        }
//        print()
//    }
//}
//
//print("------以下是栈测试(右边栈底)------")
//let stack = Stack()
//stack.push(value: 20)
//stack.push(value: 40)
//stack.push(value: 30)
//stack.showStack()
//stack.pop()
//stack.showStack()
//stack.pop()
//stack.showStack()
//stack.pop()
//stack.showStack()
//stack.pop()
//print("------------")

