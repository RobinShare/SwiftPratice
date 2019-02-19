//问题：有以下数列：1，2，3，...,n 的和

//循环方法
func f1(_ n: Int) -> Int {
    var sum = 0
    for i in 1...n{
        sum += i
    }
    return sum
}

//递归方法
func f2(_ n: Int) -> Int {
    if (n == 1) {
        return 1
    }else{
        return n + f2(n-1)
    }
}

//循环测试
f1(10)

//递归测试
f2(10)

//扩展知识：尾递归，仅返回函数本身（作用：防止内存爆炸）
func f3(_ n: Int, _ total: Int = 0) -> Int {
    if (n == 1) {
        return total + 1
    }else{
        return f3(n-1,total + n)
    }
}

f3(10)



//强化训练：计算斐波那契数列第n个数，其中斐波那契数列为：1，1，2，3，5，8，...（答案）
func f4(_ n: Int) -> Int{
    if n == 1 || n == 2 {
        return 1
    }else{
        return f4(n - 1) + f4(n - 2)
    }
}

f4(7)








