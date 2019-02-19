import UIKit

var str = "Hello, playground"

print(str)
//Hello world
print("HOw are you")

//常量
let name = 12

//整型与变量
var age : Int = 23


//类型安全与Double型
var Pi : Double = 3.14159

Pi = 3

print(Pi)

//Bool类型
var 资金充足 : Bool = true

资金充足 = false


//元组（Tuple），变量的组合
var x = 2
var y = 6
var z = 0

var 向量 =  (2,6,0)
向量.0
向量.1
向量.2

var (a,b,c) = (1,2,5)
a
b
c

var message = (天气:"snowy",23,"小米")

message.天气

//可选类型（Optional），代表变量可能有值的情况
var add : String? = "北京"


//基础操作符

//赋值操作符
var aa = 12
aa = 13

//数学操作符
1 + 3
4 - 3
3 * 4
2 / 8
//取余
9 % 4


//组合赋值 +=、-=、/=、*=
aa += 1

aa -= 2

aa /= 2

aa *= 3

//比较操作符 > >= < <=，结果true或false
2 > 4
5 >= 3


//逻辑操作符 && ||  !，Bool值的组合
//与
true && true && true

//或
true || false || false

//非
!true

//字符串和字符
//字符串字面量，包含双引号""的字面量

var ab = ""
var bb = "    "

ab.isEmpty
bb.isEmpty

//Character类型来定义字符

var zz :Character = "n"
var dd :Character = "l"

let cc = "HowAreYou"

for hh in cc {
    print(hh)
}


//连接字符串和字符， 用+ 仅能连接字符串
var new = ab + bb + cc

new.append(zz)

print(new)


//字符串插值：组合常量、变量、字面量、表达式成一个长字符串

let yname = "xiaoming"
let tpye = "G"
let num = 11
let price = 129.4

let messages = "\(yname)先生，您订购了\(tpye)\(num)的往返票，需支付\(price * 2)元。"

//集合类型 有序可重复：数组Array、无序可重复，但每个值有唯一的key：字典Dictionary、无序不重复：集合Set

//定义：Array<类型>或[类型]
var array : [Int] = [Int](repeatElement(3, count: 5))

let array2 = Array(1...10)

var  places = ["shenzhen","huizhou","xiangguang"]

places.count
places.isEmpty

places.append("dongguan")

let guowaiPlaces = ["niuyue,xinjiapo"]

places += guowaiPlaces

places[3]

places.insert("dongjing", at: 2)

places[3]

places.remove(at: 2)

places[3]


//定义：Dictionary<键类型，值类型>或[键类型：值类型]
var airports = ["PVG" : "Shanghai Pudong", "CHU" : "Dalian", "DUB" : "Dublin Airport"]

airports.count
airports.isEmpty

airports["SHQ"] = "Hongqiao Airport"

airports["CHU"]

airports["CHU"] = "Beijing"

airports["CHU"] = nil

airports


for (key, value) in airports{
    print(key, value)
}


for key in airports.keys{
    print(key+"\n")
}


//控制流
//for-in循环，执行固定次数操作，或操作一个序列（如数组）中的每一项
let fruits = ["apple", "orange", "pear"]
for fruit in fruits{
    print(fruit)
}

var  sum = 0

for i in 1...100{
    sum += i
}
print(sum)

//while循环执行一系列操作，直到条件不成立，使用场合：执行次数未知
//格式：white 条件 {语句}

var i = 1
var sumAll = 0
while i <= 100 {
    sumAll += i
    i += 1
}
print(sumAll)


//根据条件不同的分支处理 if  else
//循环中的判断，coutinue 结束本次循环，break结束整个循环

var  temp = 23

if temp > 35{
    print("开空调")
}else{
    print("不开空调")
}

var money = false

if money {
    print("买房买车")
}else{
    print("一个人")
}


for i in 1...10{
    if i == 3{
        continue
    }
    print(i)
}

// switch范围匹配
var temperture = 30

switch temperture {
case 35...40:
    print("天气酷热，强力制冷启动")
case 25...34:
    print("天气热，启动一般制冷")
case 18...24:
    print("除湿模式")
default:
    print("关掉空调")
}


//元组(Tuple)选修


//闭包：一种函数的简写，省去函数名，把参数和返回值放入花括号内
//{ (a : Int, b : Int) -> Int in
//  执行语句
//  return ...
//}

var citys = ["zhengzhou", "xiamen", "hefei","nanchang"]

func daoxu(a:String,b:String)->Bool{
    return a > b
}

var cityRank2 = citys.sorted(by: daoxu)

//闭包的自动推断类型
var cityRank1 = citys.sorted { (a, b) -> Bool in
    return a > b
}

var cityRank3 = citys.sorted { (a, b)  in
     a > b
}

var cityRank4 = citys.sorted{
    $0 > $1
}


//函数
//定义函数形式：func 函数名（参数1：类型，参数2：类型，...）->返回结果的类型{执行语句}
//调用：var 变量名称 = 函数名(变量1，变量2，...)

func add (a:Int, b:Int) -> Int{
    return a + b
}

var xx = add(a: 5, b: 9)

var aaa = add(a: 11, b: 77)


//无参数无返回值
func welcome(){
    print("welcome back")
}

welcome()

//多返回值
func maxMin() -> (Int, Int){
    return(Int.min,Int.max)
}

maxMin().0
maxMin().1

//参数给默认值
func add2 (x : Int, increment : Int = 2) -> Int{
    return x + increment
}

add2(x: 3)
add2(x: 2, increment: 1)


//函数式编程，函数类型（Int,Int）-> Int
func calculate(x:Int, y:Int,method:(Int,Int) -> Int) -> Int{
    return method(x,y)
}


func addd(x:Int, y:Int) -> Int{
    return x + y
}

func multiply(x:Int, y:Int) -> Int{
    return x * y
}

calculate(x: 2, y: 5, method: addd)

calculate(x: 2, y: 5, method: multiply)


//枚举 enumeration,列举有限种情况
//定义和使用，给定一个名称，然后把每一种情况都列举出来;使用：点语法

enum Weather{
    case sunny
    case cloudy
    case snow
    case windy
    case froggy
}


Weather.cloudy

//与switch配合使用，如果变量是枚举值，可省略枚举名

var todayweather = Weather.snow

switch todayweather {
case .cloudy:
    print("多云")
case .snow:
    print("下雪了")
default:
    print("天气状况未知")
}

//枚举的附加值（）选修



