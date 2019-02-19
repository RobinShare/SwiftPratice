//第二节课： 有序数组的查找(二分查找法)
//问题：想判断一个数是否存在于有序数组中，其中有序数组并没有重复元素。
        //如果存在，则返回true， 如果不存在，则返回false

//创建一个有序数组(这里Element为Int)
let array: [Int] = [1,2,5,6,8,9,10,12,15]

//传统查找方法
extension Array where Element == Int {
    func searchElement(x: Int) -> Bool {
        for ele in self {
            if ele == x {
                return true
            }
        }
        return false
    }
}
//测试传统查找方法
array.searchElement(x: 6)
array.searchElement(x: 7)

//二分查找法
extension Array where Element == Int {
    func binarySearch(x: Int) -> Bool {
        var result = false
        
        let min = self.startIndex
        let max = self.endIndex - 1
        
        if (min > max) {
            return false
        }
        
        let mid = Int((min + max) / 2)
        let value = self[mid]
        
        if x == value {
            return true
        }
        
        if x < value {
            let array =
                min < mid ? Array(self[min..<mid]) : Array<Int>()
            result = array.binarySearch(x: x)
        }
        
        if x > value {
            let array =
                mid < max ? Array(self[mid + 1...max]) : Array<Int>()
            result = array.binarySearch(x: x)
        }
        
        return result
    }
}

array.binarySearch(x: 6)
array.binarySearch(x: 7)
array.binarySearch(x: 11)
