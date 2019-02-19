//小波说雨燕系列
//Swift算法课-主讲人：沈家瑜  目前为在校生
//个人联系方式： 邮箱 s@shenjiayu.cn, 也可以在小波群内进行提问

//第一课：小试牛刀（递归）

//问题： 有以下数列： 1,2,3,4,5,...  求前n个数的和
//循环 方法

func f1(_ n: Int) -> Int {
    var sum = 0;
    for i in 1...n {
        sum += i
    }
    return sum
}

//递归 方法

func f2(_ n: Int) -> Int {
    if (n == 1) {
        return 1
    } else {
        return n + f2(n - 1)
    }
}

//循环测试
f1(10)

//递归测试
f2(10)


//扩展知识：尾递归 （作用：防止内存爆炸）
func f3(_ n: Int, _ total: Int = 0) -> Int {
    if (n == 1) {
        return total + 1
    } else {
        return f3(n - 1, total + n)
    }
}

//尾递归测试
f3(10)


//强化训练：计算斐波那契数列第n个数 ， 其中斐波那契数列为: 1,1,2,3,5,8... (答案）
func f4(_ n: Int) -> Int {
    if (n == 1) {
        return 1
    }
    
    if (n == 2) {
        return 1
    }
    
    return f4(n - 1) + f4(n - 2)
}

//斐波那契测试
f4(6)
