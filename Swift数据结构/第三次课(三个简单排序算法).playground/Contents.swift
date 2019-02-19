//三种简单排序算法

//问题： 如果想要对以下数组进行从小到大排序，该怎么做呢？
let array:[Int] = [2,5,3,1,7,4,9,8,6]

//插入排序
extension Array where Element == Int {
    func insertionSort() -> [Element] {
        if self.count <= 1 {
            return self
        }

        var output: [Element] = self

        for index in 0..<output.count {
            let value = output[index]
            var comparaIndex = index - 1

            while comparaIndex >= 0 {
                if value < output[comparaIndex] {
                    output[comparaIndex + 1] = output[comparaIndex]
                    output[comparaIndex] = value
                } else {
                    break
                }
                comparaIndex -= 1
            }
        }
        return output
    }
}

//测试插入排序
array.insertionSort()

//冒泡排序
extension Array where Element == Int {
    func bubbleSort() -> [Element] {
        if self.count <= 1 {
            return self
        }
        
        var output = self
        
        for i in 0..<count - 1 {
            for j in 0..<count - 1 - i {
                if output[j+1] < output[j] {
                    let temp = output[j]
                    output[j] = output[j+1]
                    output[j+1] = temp
                }
            }
        }
        
        return output
    }
}

//测试冒泡排序
array.bubbleSort()

//选择排序
extension Array where Element == Int {
    func selectionSort() -> [Element] {
        if self.count <= 1 {
            return self
        }
        
        var output = self
        var startIndex = 0
        
        for _ in 0..<count - 1 {
            var miniIndex = startIndex
            for i in startIndex..<count {
                if output[i] < output[miniIndex] {
                    miniIndex = i
                }
            }
            
            if miniIndex != startIndex {
                let temp = output[miniIndex]
                output[miniIndex] = output[startIndex]
                output[startIndex] = temp
            }
            
            startIndex += 1
        }
        
        return output
    }
}

//测试选择排序
array.selectionSort()

