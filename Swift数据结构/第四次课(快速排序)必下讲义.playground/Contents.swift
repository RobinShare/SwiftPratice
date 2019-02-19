//快速排序

/*
 例如以下数组：
     6 - 8 - 9 - 5 - 7 - 3 - 4
 先对定点6进行位置选择
 第一轮停在：
                             √e
     6 - 8 - 9 - 5 - 7 - 3 - 4
         √s
 
 第二轮停在：
                         √e
     6 - 4 - 9 - 5 - 7 - 3 - 8
             √s
 
 第三轮停在(视频中在这个地方有个小错误，应该e先指向7，判断7大于6，然后指向5，判断5小于6，就停下来。然后s开始指向5，碰到e)：
                 √e
     6 - 4 - 3 - 5 - 7 - 9 - 8
                 √s
 
 完成：
 
     5 - 4 - 3 - 6 - 7 - 9 - 8

 再分析6左边的数组 5 - 4 - 3
 
     对定点5进行选择
     结果： 4 - 3 - 5
 
         对5左边数组 4 - 3
         对定点4进行选择
         结果 3 - 4
 
 6左边数组变成 3 - 4 - 5
 同理6右边数组变成 7 - 8 - 9
 最后排序完成
 
 主要思想：分冶思想
*/

//预先定义好需要测试的数组
var array = [13,1,6,15,2,8,9,5,7,3,10,12,14,11,4]

extension Array where Element == Int {
    
    mutating func quickSort_Using(){
        quickSort(0, self.count)
    }
    
    private mutating func quickSort(_ f: Int, _ g: Int) {
        let count = g - f
        if (count == 0 || count == 1) {
            return
        }
        
        let point = f
        var start = f
        var end = g - 1
        
        out: while end != start {
            while self[end] >= self[point] {
                if end == start {
                    break out
                }
                end -= 1
            }
            
            while self[start] <= self[point] {
                if end == start {
                    break out
                }
                start += 1
            }
            
            let temp = self[end]
            self[end] = self[start]
            self[start] = temp
        }
        
        let temp = self[point]
        self[point] = self[start]
        self[start] = temp
        
        self.quickSort(f, start)
        self.quickSort(start + 1, g)
        
    }
}

//测试快速排序算法
array.quickSort_Using()
