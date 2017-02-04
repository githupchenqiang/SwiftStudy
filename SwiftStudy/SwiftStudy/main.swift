//
//  main.swift
//  SwiftStudy
//
//  Created by QAING CHEN on 16/11/1.
//  Copyright © 2016年 QiangChen. All rights reserved.
//

import Foundation

let max = 10
var current = 0

var x = 0.0 , y = 0.0 ,z = 0.0

var welcome:String

welcome = "hello"

var onw = 1

onw = 2

print(onw)

var red ,green,blue:Double

let π = 3.1415926
let 你好 = "你好世界"
let 狗🐂 = "dogcow"

var friendlyWelcome = "Hello"
friendlyWelcome = "Bonjour"
print(friendlyWelcome)

print("The current value of friendlyWelcome is \(friendlyWelcome)")
/*
  
 这是一个注释
 */

let cat = "🐱"; print(cat)

let minValue = UInt8.max
print(minValue)


//类型转换
let three = 3
let point = 0.14159
let pi = Double(three) + point;
print(pi);

let integerPi = Int(pi)
print(integerPi)

//类型别名
typealias AudioSample = UInt16

var maxAmplitudeFound = AudioSample.max
print(maxAmplitudeFound)

let orangesAreOrange = true
let turnipsAreDelicious = false

print(orangesAreOrange)

if turnipsAreDelicious
{
    print("Mmm, tasty turnips")
}else
{
    print("Eww,turnips are horrible")
}

let http404Error = (404, "Not Found")

let i = 1
if i == 1 {
    print(i)
}

let (statusCode,statusMessge) = http404Error

print("The Status Code is \(statusMessge)")

let (justTheStatusCode,_) = http404Error;
print("The Statues \(justTheStatusCode)");

let http200Status = (statusCode:200,description:"OK")

print("The status code is \(http200Status.statusCode)")


//可选类型

let possibleNumber = "123"
let convertedNumber = Int(possibleNumber) //可选类型这个表示只能是int或者nil,不能是其他的类型



//nil

var serverResponseCode: Int? = 404
serverResponseCode = nil

var surveyAnswer: String? //声明常量或者变量没有赋值,会被自动设置nil

//OC中nil是一个不存在对象的指针 .在Swift中nil表示一个确定的值,用来表示缺失,任何类型的可选状态都可以被设置为nil,不只是对象类型

//if语句以及强制解析
if convertedNumber != nil{
    print("ConvertedNumber contains some integer value")
    
}

/*
 强制解析
 */
//确定可选类型确实有值时可以使用加!来告诉编译器使用可选值 成为强制解析
if convertedNumber != nil{
    print("convertedNumber has an integer value of \(convertedNumber!)")
    
}
//强制解析要确保值存在不然会运行出错,确保包含一个非nil得值

//可选绑定
if let actualNumber = Int(possibleNumber)
{
    print("\'\(possibleNumber)\'has an integer value of \(actualNumber)");
}else
{
    print("\'\(possibleNumber)'could not be converted to an integer");
}

if let firstNumber = Int("4"),let secondNumber = Int("42"),firstNumber < secondNumber && secondNumber < 100{
    print("\(firstNumber) < \(secondNumber) < 100");
}

let possibleString : String? = "An optional string."
let forcedString:String = possibleString!


let assumerString:String = "An implicitly unwrapped optional string."
let impliciString:String = assumerString

print(forcedString)

print(impliciString)


if assumerString !=  nil{
    print(assumerString)
}

func canThrowAnError() throws{
    
}



do{
    try canThrowAnError()
    print(2);
    
}catch
{
    print(1)

}


func makeASandwich()throws{
    
}


//断言
let age = -3
assert(age <= 0,"A person's age cannot be less than zero")
//assert(age >= 0)




//UTF-8
let dogString = "Dog!!🐶"
for codeUnit in dogString.utf8{
    print("\(codeUnit)",terminator:"")
    
}

for index in 1...5{
    print("\(index) items 5 is \(index * 5)")
}


let base = 3
let power = 10
var answer = 1
for _ in 1...power{
    answer *= base
}
print("\(base) to the power of \(power) is \(answer)")

let names = ["Anna","Alex","Brian","Jack"]
for name in names
{
    print("hello,\(name)!")
}

let numberOfLegs = ["spider":8,"ant":6,"cat":4]
for (animamalName,legCount) in  numberOfLegs{
    print("(animalName)s have \(legCount) legs")
}


let finalSquare = 25
var board = [Int](repeating: 0,count:finalSquare + 1)

var square = 0
var diceRoll = 0
while square < finalSquare
{
    diceRoll += 1
    if diceRoll == 7{
        diceRoll = 1
    }
    //更具点数移动
    square += diceRoll
    if square < board.count
    {
        square += board[square]
    }
    
}

print("Game over!")

var temperatureInFahrenheit = 30
if temperatureInFahrenheit <= 32{
    print("It's very cold. Consider wearing a scarf.")
}

temperatureInFahrenheit = 40
if temperatureInFahrenheit <= 32
{
    print("It's very cold. consider wearing a scarf")
}else
{
    print("It's very cold. consider wearing a shirt")
}

let someCharacter: Character = "z"
switch someCharacter
{
    case "a":
    print("The first letter of the alphabet")
    
    case "z":
    print("The last letter of the alphabet")
    
default:
    print("Some other character")
}


//区间匹配
let approximateCount = 62
let countedThings = "moons orbiting Saturn"
var naturalCount:String
switch approximateCount
{
case 0:
    naturalCount = "no"
case 1..<5:
    naturalCount = "a few"
case 5..<12:
    naturalCount = "several"
case 12..<100:
    naturalCount = "dozens of"
case 100..<1000:
    naturalCount = "hundreds of"
default:
    naturalCount = "many"
}

print("there are \(naturalCount) \(countedThings).")

let somePoint = (1,1)
//switch somePoint
//{
//
//    
//}
//

// 提前退出
func greet(person:[String:String])
{
    guard let name = person["name"] else{
        return;
    }
    print("Hello \(name)")
    
    guard person["location"] != nil else{
        print("I hope the weather is nice near you.")
        return
    }
    
    
    
}


//函数的定义与调用
func greet(person: String)->String
{
    let greeting = "Hello, " + person + "!"
    return greeting
    
}

print(greet(person: "Anna"))


print(greet(person: "Brian"))


func greetAgain(person:String) -> String {
    return "Hello again, " + person + "!"
}
print(greetAgain(person: "Anna"))


//函数参数与返回值

//无返回值
func sayHelloWorld() ->String{
    return "hello, world"
}

print(sayHelloWorld())

//多参数函数
func greet(person: String,alreadyGreeted: Bool) -> String
{
    if alreadyGreeted {
        return greetAgain(person: person)
    }else{
        return greetAgain(person: person)
    }
}

print(greet(person: "Tim", alreadyGreeted: true))

//无返回值参数
func greet(person: String) {
    print("Hello, \(person)!")
}
//greet(person: "Dave")
func printAndCount(string: String) -> Int{
    print(string)
    return string.characters.count
}

func printWithoutCounting(string: String) {
    let _ = printAndCount(string: string)
}

printAndCount(string: "hello,world")

//多重返回值函数
func minMax(array: [Int]) -> (min: Int,max: Int)
{
    var currentMin = array[0]
    var currentMax = array[0]
    for value in array[1..<array.count] {
        if value < currentMin {
            currentMin = value
        }else if value > currentMax{
            currentMax = value
        }
    }
    
    return (currentMin,currentMax)
}


let bounds = minMax(array: [8,-6,2,109,3,71])
print("min is \(bounds.min) and max is \(bounds.max)")

//可选元祖返回类型

func minMax(array: [Int]) -> (min: Int, max: Int)?
{
    if array.isEmpty{return nil}
    var currentMin = array[0]
    var currentMax = array[0]
    
    for value in array[1..<array.count] {
        if value < currentMin {
            currentMin = value
        }else if value > currentMax
        {
            currentMax = value
        }
    }
    return (currentMin, currentMax)
    
}

//if let bounds = minMax(array: [8, -6, 2, 109, 3, 71]){
//    print("min is \(bounds.min) and max is \(bounds.max)")
//}

//函数参数标签和参数名称
func somefunction(firstparameterName: Int, someParameterName: Int) {
    
}

somefunction(firstparameterName: 1, someParameterName: 2)


//参数标签
func someFunction(argumentLabel parmeterName: Int) {
    
}

func greet(pesson: String,from hometown: String) -> String {
    return "hello \(pesson)! Glad you could visit from \(hometown)."
}

print(greet(pesson: "bill", from: "cupertion"))


//忽略参数标签
func someFunction(_ firstParameterName: Int, sencondParamentName: Int){
    
}

someFunction(1, sencondParamentName: 2)



//默认参数标签
func someFunctionDefault(parameterWithhoutDefault: Int, parameterWithDefault: Int = 12)
{
    
}

someFunctionDefault(parameterWithhoutDefault: 4)

//可变参数
func arithmeticMean(_ numbers: Double...) -> Double {
    var total: Double = 0
    for number in numbers {
        total += number
    }
    return total / Double(numbers.count)
}

arithmeticMean(1, 2, 3, 4, 5)

arithmeticMean(3, 8.25, 18.75)

//输入输出参数
func swapTwoInts(_ a: inout Int, _ b: inout Int)
{
    let temporaryA = a
    a = b
    b = temporaryA
}

var someInt = 3
var anotherInt = 107
swapTwoInts(&someInt, &anotherInt)

print("someInt is now \(someInt), and anotherInt is now \(anotherInt)")



//函数类型
func addTwoInts(_ a: Int, _ b: Int) -> Int {
    return a + b
}

func multiplyTwoInts(_ a: Int, _ b: Int) -> Int {
    return a * b
}

print(addTwoInts(2, 3))

func PrintHelloworld(){
    print("hello, world")
}
PrintHelloworld()

//使用函数类型
var mathFunction: (Int, Int) -> Int = addTwoInts

print("Result: \(mathFunction(2, 3))")

mathFunction = multiplyTwoInts
print("Result: \(mathFunction(2, 3))")

let anotherMathFunction = addTwoInts


//函数类型作为参数类型

func PrintMathResult(_ mathFunction: (Int, Int) -> Int, _ a: Int, _ b: Int)  {
    print("Result: \(mathFunction(a, b))")
}

PrintMathResult(addTwoInts, 3, 5)



//函数类型作为返回类型
func stepForward(_ input: Int) -> Int {
    return input + 1
}

func stepBackward(_ input: Int) -> Int {
    return input - 1
}

func chooseStepFunction(backWard: Bool) -> (Int) -> Int {
    return backWard ? stepBackward : stepForward
}

var currentValue = 3
let moveNearToZero = chooseStepFunction(backWard: currentValue > 0)

print("Counting to zero:")

while currentValue != 0 {
    print("\(currentValue)... ")
    
    currentValue = moveNearToZero(currentValue)
}

//嵌套函数
func chooseStepFunction(backward: Bool) -> (Int) -> Int {
    func stepForward(input: Int) -> Int { return input + 1 }
    func stepBackward(input: Int) -> Int { return input - 1 }
    return backward ? stepBackward : stepBackward
}
var currentvalue = -4
let MoveNearToZero = chooseStepFunction(backWard: currentValue > 0)
while currentValue != 0{
    print("\(currentValue)...")
    currentValue = moveNearToZero(currentValue)
}

print("zero!")



//闭包
//嵌套函数是一个在较复杂函数中方便进行命名和定义自包含代码模块的方式。当然，有时候编写小巧的没有完整定义和命名的类函数结构也是很有用处的，尤其是在你处理一些函数并需要将另外一些函数作为该函数的参数时。
//
//闭包表达式是一种利用简洁语法构建内联闭包的方式。闭包表达式提供了一些语法优化，使得撰写闭包变得简单明了。下面闭包表达式的例子通过使用几次迭代展示了 sorted(by:) 方法定义和语法优化的方式。每一次迭代都用更简洁的方式描述了相同的功能。

/*
 sorted方法
 */
//Swift 标准库提供了名为 sorted(by:) 的方法，它会根据你所提供的用于排序的闭包函数将已知类型数组中的值进行排序。一旦排序完成，sorted(by:) 方法会返回一个与原数组大小相同，包含同类型元素且元素已正确排序的新数组。原数组不会被 sorted(by:) 方法修改
let Names = ["Chris", "Alex", "Ewa", "Barry", "Daniella"]

func backWard(_ s1:String, _ s2: String) -> Bool {
    return s1 > s2
}

var reversedNames = names.sorted(by: backWard)
print(reversedNames)

reversedNames = names.sorted(by: { (s1: String, s2: String) -> Bool in return
s1 > s2})


func arithMeticMean(_ numbers: Double...) -> Double {
    var total: Double = 0
    for number in numbers {
        total += number
    }
    
    return total / Double(numbers.count)
}

//arithMeticMean(1, 2, 3, 4, 5)

print(arithMeticMean(1, 2, 3, 4, 5))


func swapTwoInts1(_ a: inout Int, _ b: inout Int) {
    let temporaryA = a
    a = b
    b = temporaryA
}


var someInt1 = 3
var anotherInt1 = 107
swapTwoInts1(&someInt, &anotherInt)

func addTwoInts1(_ a: Int, _ b: Int) -> Int {
    return a + b
}

func multipplyTwoInts(_ a: Int, _ b: Int) -> Int {
    return a * b
}


func printHellowold(){
    print("hello wold")
}

mathFunction = multiplyTwoInts
print("Result: \(mathFunction(2, 3))")

let diggitNames = [
    0: "Zero", 1: "One", 2:"Two", 3: "Three", 4: "Four"
]

let numbers = [16, 58, 510]

/*
let strings = numbers.map{
    (numbers) -> String in
    var number = numbers
    var output = ""
    repeat{
        output = diggitNames[number % 10]! + output
        number /= 10
    }while number > 0
    
    return output
}

print(strings)
*/


//但表达式闭包隐式返回

reversedNames = names.sorted(by: { s1, s2  in s1 > s2})

//参数名缩写
reversedNames = names.sorted(by: { $0 > $1})
print("======%@",reversedNames)

reversedNames = names.sorted(by: >)

//尾随闭包

func someFunctionThatTakesAClosure(closure: () -> Void) {
    // 函数体部分
}


//使用尾随闭包进行函数调用
someFunctionThatTakesAClosure(closure: {
        //闭包主题部分
})

//使用尾随闭包进行函数调用
someFunctionThatTakesAClosure() {
    //闭包主体部分
}

//在闭包表达式语法一节中作为 sorted(by:) 方法参数的字符串排序闭包可以改写为：
reversedNames = names.sorted(){ $0 > $1}

//如果闭包表达式是函数或方法的唯一参数，则当你使用尾随闭包时，你甚至可以把 ()省略掉
reversedNames = names.sorted {$0 > $1}

//值捕获
func makeIncrementer(forIncrement amount: Int) -> () -> Int {
    var runningtotal = 0
    func incrementer() -> Int {
        runningtotal += amount
        return runningtotal
    }
    return incrementer
}

let incrementByTen = makeIncrementer(forIncrement: 10)

print(incrementByTen)


//闭包是引用类型
let alsoIncrementByTen = incrementByTen

//逃逸闭包
var completionHandlers: [() -> Void] = []

func somFunctionWithEscapingClosure(completionHandle: @escaping () -> Void) {
    completionHandlers.append(completionHandle)
}


func someFunctionWithNonesCapingClosure(closure: () -> Void) {
    closure()
}

class SomeClass {
    var x = 10
    func doSomething() {
        someFunctionThatTakesAClosure { self.x = 100 }
        someFunctionThatTakesAClosure { x = 200 }
    }
    
}


let instance = SomeClass()
instance.doSomething()
print(instance.x)

completionHandlers.first?()
print(instance.x)


//自动闭包

var customerInLine = ["Chirs", "Alex", "Ewa", "Barry", "Daniella"]
print(customerInLine.count)

let customerProvider = { customerInLine.remove(at: 0)}
print(customerInLine.count)

print("Now serving \(customerProvider())!")

print(customerInLine.count)

enum someEnumeration {
    
}

enum CompassPoint {
    case North
    case South
    case East
    case West
}

enum Planet {
    case Mercury, Venus, Earth, Mars, Jupiter, Saturn, Uranus, Neptune
}

var directionToHead = CompassPoint.West

directionToHead = .East

directionToHead = .South

switch directionToHead{
case .North:
    print("lots of plants have a north")
case .South:
    print("Watch out for penguins")
case .East:
    print("Where the sun rises")
case .West:
    print("Where the skies are blue")
}


let somePlanet = Planet.Earth
switch somePlanet{
case .Earth:
    print("Mostly harmless")
    
default:
    print("Not a safe place for humans")
    
}

enum barcode {
    case UPCA(Int, Int, Int, Int)
    case QRCode(String)
}

var productBarcode = barcode.UPCA(8, 85909, 51226, 3)
productBarcode = .QRCode("ABCDEFGHIJKLMNOP")

switch productBarcode {
case .UPCA(let numberSystem, let manufacturer, let product, let check):
    print("UPC -A: \(numberSystem), \(manufacturer), \(product), \(check)")

case .QRCode(let productCode):
    print("QR code: \(productCode)")
}


switch productBarcode{
case let .UPCA(numberSystem, MAnufacturer, product, check):
    print("UPC -A: \(numberSystem), \(MAnufacturer), \(product), \(check)")
case let .QRCode(productCode):
    print("QR code: \(productCode)")
}


enum ASCIIControlCharacter: Character {
    case Tab = "\t"
    case LineFeed = "\n"
    case CarriageReturn = "\r"
}


enum em: Int {
    case Mercury = 1, Venus, Earth, Mars, Jupiter, Saturn, Uranus, Neptune
}

//enum CompassPoint: String {
//    case North, South, East, West
//}
let positionToFind = 9

enum ArithmeticExpression {
    case Number(Int)
    indirect case Addition(ArithmeticExpression, ArithmeticExpression)
    indirect case multiplication(ArithmeticExpression, ArithmeticExpression)
}

indirect enum ArithmeticExpression1 {
    case Number(Int)
    case Addition(ArithmeticExpression, ArithmeticExpression)
    case Multiplication(ArithmeticExpression, ArithmeticExpression)
}


let five = ArithmeticExpression.Number(5);
let four = ArithmeticExpression.Number(4);
let sum = ArithmeticExpression.Addition(five, four)
let product = ArithmeticExpression.multiplication(sum, ArithmeticExpression.Number(2))
print(product)


func evaluate(exPression: ArithmeticExpression) -> Int {
    switch exPression {
    case .Number(let value):
        return value
    case .Addition(let left, let right):
        return evaluate(exPression: left) + evaluate(exPression: right)
    case .multiplication(let left, let right):
        return evaluate(exPression: left) * evaluate(exPression: right)
    }
}

print("=====%d",evaluate(exPression: product))

//类和结构体

//定义类
class SomeClasses {
    
}


/// 定义机构体
struct SomeStructure {
    
}

struct Resolution {
    var width = 0
    var height = 0
}



class VideoMode {
    var resolution = Resolution()
    var interloced = false
    var frameRate = 0.0
    var name = String()
}



//生成结构体和类实例的语法
let someResolution = Resolution()
let someVideoMode = VideoMode()



//属性访问
//点语法访问实例属性 

//语法规则 实例名后紧跟属性名
print("The width of someResolution is \(someResolution.width)")

someVideoMode.resolution.width = 1280
print("The width of someVideoMode is Now \(someVideoMode.resolution.width)")


let vga = Resolution(width:640, height: 480)

let hd = Resolution(width: 1920, height: 1080)
var cinema = hd

cinema.width = 2008;

print("cinema is now \(cinema.width) pixels wide")

print("hd is still \(hd.width) pixels wide")

enum CompassPoint1 {
    case North, South, East, West
}

var currentDirection = CompassPoint1.West
print(currentDirection)

let rememberedDirection = currentDirection
currentDirection = .East

if rememberedDirection == .East {
    print("The remembered direction is still .West")
}


//类是引用类型
let tenEighty = VideoMode()
tenEighty.resolution = hd
tenEighty.interloced = true
tenEighty.name = "1080i"
tenEighty.frameRate = 25.0

let alsoTenEighty = tenEighty
alsoTenEighty.frameRate = 30.0

print(alsoTenEighty.frameRate)



//恒等运算符
//因为类是引用类型，有可能有多个常量和变量在幕后同时引用同一个类实例。（对于结构体和枚举来说，这并不成立。因为它们作为值类型，在被赋予到常量、变量或者传递到函数时，其值总是会被拷贝。）

if tenEighty === alsoTenEighty
{
    print("====");
}

// "等价于”表示两个类类型（class type）的常量或者变量引用同一个类实例

// 等于 表示两个实例的值 "相等" 或相同

struct FixedLengthRange {
    var firstValue: Int
    let length: Int
}

var rangeOfThreeItems = FixedLengthRange(firstValue: 0, length: 3)

rangeOfThreeItems.firstValue = 6
print(rangeOfThreeItems.length)


//常量结构体的存储属性

let rangeOfFourItems = FixedLengthRange(firstValue: 0, length: 4)

//延迟存储属性

class DataImporter {

    var fileName = "data.txt"
}

class DataManager{
    lazy var importer = DataImporter()
    var data = [String]()
}

let manager = DataManager()
manager.data.append("Some data")
manager.data.append("Some More data")

print(manager.importer.fileName)

//存储属性和实例变量
struct Point{
    var x = 0.0, y = 0.0
}

struct Size {
    var width = 0.0, height = 0.0
}

struct Rect {
    var origin = Point()
    var size = Size()
    var center: Point {
        get {
            let centerX = origin.x + (size.width / 2)
            let centerY = origin.y + (size.height / 2)
            return Point(x: centerX, y: centerY)
        }
        
        set(newCenter) {
            origin.x = newCenter.x - (size.width / 2)
            origin.y = newCenter.y - (size.height / 2)
        }
        
    }

}

var square1 = Rect(origin: Point(x: 0.0, y: 0.0), size:Size(width: 10.0, height: 10.0))

let initialSquareCenter = square1.center
square1.center = Point(x: 15.0, y: 15.0)
print("square.origin is now at (\(square1.origin.x), \(square1.origin.y))")



//如果计算属性的 setter 没有定义表示新值的参数名，则可以使用默认名称 newValue。下面是使用了便捷 setter 声明的 Rect 结构体代码：
struct AlternativeRect {
    var origin = Point()
    var size = Size()
    var center: Point{
        get{
            let centerX = origin.x + (size.width / 2)
            let centerY = origin.y + (size.height / 2)
            return Point(x: centerX, y: centerY)
        
        }
        set{
            origin.x = newValue.x - (size.width / 2)
            origin.y = newValue.y - (size.height / 2)
        }
    }
}

//只读计算属性

struct Cuboid {
    var width = 0.0, height = 0.0, depth = 0.0
    var volum: Double {
        return width * height * depth
    }
}

let fourByFiveByTwo = Cuboid(width: 4.0, height: 5.0, depth: 2.0)
print("the volume of fourByFiveByTwo is \(fourByFiveByTwo.volum)")


//属性观察器
class StepCounter {
    var totalSteps: Int = 0 {
        willSet(newTotalSteps){
          print("About to set totalSteps to \(newTotalSteps)")
        }
        
        didSet{
            if totalSteps > oldValue {
                print("Added \(totalSteps - oldValue) steps")
            }
        }
        
    }
    
}

let stepCounter = StepCounter()
stepCounter.totalSteps = 200
stepCounter.totalSteps = 360
stepCounter.totalSteps = 896


//类型属性语法

//使用关键字 static 来定义类型属性
struct SomeStructure1 {
    static var storedTypeProperty = "Some value."
    static var computedTypeProperty: Int {
        return 1
    }
}

enum SomeEnumeration {
    static var storedTypeProperty = "Some value."
    static var computedTypeProperty: Int {
        return 6
    }
}


//在为类定义计算型类型属性时，可以改用关键字 class 来支持子类对父类的实现进行重写
class SomeClass1 {
    static var storedTypeProperty = "Some value."
    static var computedTypeProperty: Int {
        return 27
    }
    
    class var ovvrideableComputedTypeProperty: Int {
        return 107
    }
}

//获取和设置类型属性的值
print(SomeStructure1.storedTypeProperty)

SomeStructure1.storedTypeProperty = "Another value."
print(SomeStructure1.storedTypeProperty)

struct AudioChannel {
    static let thresholdLevel = 10
    static var maxInputLevelForAllChannels = 0
    var currentLevel: Int = 0 {
        didSet {
            if currentLevel > AudioChannel.thresholdLevel {
                currentLevel = AudioChannel.thresholdLevel
            }
            
            if currentLevel > AudioChannel.maxInputLevelForAllChannels {
                AudioChannel.maxInputLevelForAllChannels = currentLevel
            }
        }
    }
    
}

var leftChannel = AudioChannel()
var rightChannel = AudioChannel()

leftChannel.currentLevel = 7
print(leftChannel.currentLevel)

print(AudioChannel.maxInputLevelForAllChannels)

class Counter {
    var count = 0
    func increment() {
        count += 1
    }
    
    func incrementBy(anount: Int) {
        count += anount
    }
    
    func reset() {
        count = 0
    }
}

let counter = Counter()

//Counter.increment(0)
counter.reset()

counter.incrementBy(anount: 5)

class Counter1 {
    var count: Int = 0
    func incrementBy(amount: Int, numberOfTimes: Int) {
        count += amount * numberOfTimes
    }
}

let counter1 = Counter1()
counter1.incrementBy(amount: 5, numberOfTimes: 3)
print(Counter1())

//func increment() {
////    self.count += 1
//}

struct Point1 {
    var x = 0.0, y = 0.0
    func isToTheRightOfX(x: Double) -> Bool {
        return self.x > x
    }
    
}

let  somepoint = Point1(x: 40, y: 5.0)

if somepoint.isToTheRightOfX(x: 1.0)
{
    print("This Point is to the right of the line where x == 1.0")
}

struct point2 {
    var x = 0.0, y = 0.0
    mutating func moveByX(deltaX: Double, y deltaY: Double) {
        x += deltaX
        y += deltaY
    }
}

var somePint2 = point2(x: 1.0, y: 1.0)

somePint2.moveByX(deltaX: 2.0, y: 3.0)
print(somePint2)
var fixedPoint = point2(x: 3.0, y: 3.0)
fixedPoint.moveByX(deltaX: 2.0, y: 3.0)


struct Point3 {
    var x = 0.0, y = 0.0
    mutating func moveByX(deltaX: Double, y deltaY: Double){
        self = Point3(x: x + deltaX, y: y + deltaY)
    }
}

enum TriStateSwitch {
    case Off, Low,High
    mutating func next() {
        switch self {
        case .Off:
            self = .Low
        case .Low:
            self = .High
        case .High:
            self = .Off
        }
    }
}

var ovenLight = TriStateSwitch.Low
ovenLight.next()

ovenLight.next()


//类型方法
class SomeClass3 {
    class func someTypeMethod() {
        
    }
}

SomeClass3.someTypeMethod()
print(SomeClass3())

struct LevelTracker {
    static var highestUnlockedLevel = 1
    static func unlockLevel(level: Int) {
        if level > highestUnlockedLevel{
            highestUnlockedLevel = level
        }
        func levelIsUnlocked(level: Int) -> Bool {
            return level <= highestUnlockedLevel
        }
        _ = 1
    }
}


struct TimesTable {
    let multiplier: Int
    subscript(index: Int) -> Int {
        return multiplier * index
    }
}

let threeTimesTable = TimesTable(multiplier: 3)
print("six times three is \(threeTimesTable[6])")

var numberOfLegs2 = ["spider": 8, "ant": 6, "cat": 4]
numberOfLegs2["bird"] = 2

print(numberOfLegs2)

struct Matrix {
    let rows: Int, columns: Int
    var grid: [Double]
    init(rows: Int, columns: Int) {
        self.rows = rows
        self.columns = columns
        grid = Array(repeating: 0.0, count: rows * columns)
    }
    
    func indexisValidForRow(row: Int, column: Int) -> Bool {
        return row >= 0 && row < rows && column >= 0 && column < columns
    }
    
    subscript(row: Int, column: Int) -> Double {
        get {
            assert(indexisValidForRow(row: column, column: column), "Index out of range")
            return grid[(row * columns) + column]
        }
        
        set {
            
            assert(indexisValidForRow(row: column, column: column), "Index out of Range")
            
        }
    }
}

//var matrix = Matrix(rows: 2, columns: 2)
//Matrix[0, 1] = 1.5
//Matrix[1, 0] = 3.2
//
//func indexIsValidForRow(row: Int, column: Int) -> Bool {
//    return row >= 0 && row < row && column >= 0 && column < column
//}

class Vehicle {
    var currentSpeed = 0.0
    var description: String {
        return "traveling at \(currentSpeed) miles per hour"
    }
    func makeNoise() {
        
    }
}

let someVehicle = Vehicle()

print("Vehicle: \(someVehicle.description)")

class Bicycle: Vehicle {
    var hasBasKet = false
}

let bicycle = Bicycle()
bicycle.hasBasKet = true

bicycle.currentSpeed = 15.0
print("Bicycle: \(bicycle.description)")


class Tandem: Bicycle {
    var currentNumberOfPassengers = 0
}



/* 方法**/
class CounterMothed {
    var count = 0
//    func increment() {
//        count += 1
//    }
   
    func increment() {
        self.count += 1
    }

    
    func incrementBy(amount: Int) {
        count += amount
    }
    
    func reset() {
        count = 0;
    }

}

let counterValue = CounterMothed()

counterValue.increment()

counterValue.incrementBy(amount: 5)

/* 方法的局部参数名称和外部参数名称*/
class CounterClass {
    var count: Int = 0
    func incrementBy(amount: Int, numberOfTimes: Int) {
        count += amount * numberOfTimes
    }
}

let counterClass = CounterClass()
print(counterClass.incrementBy(amount: 5, numberOfTimes: 3))

/* 修改方法的外部参数名称 */

struct study{
    var x = 0.0, y = 0.0
    func isToTheRightOfX(x: Double) -> Bool {
        return self.x > x
    }
   
}

let someStudy = study(x: 4.0, y: 5.0)
if someStudy.isToTheRightOfX(x: 1.0) {
    print(1)
}

/* 在实例方法中修改值类型*/

struct study1 {
    var x = 0.0, y = 0.0
    mutating func moveByX(deltaX: Double, y deltaY: Double){
        x += deltaX
        y += deltaY
    }
    
}

var someStudy1 = study1(x: 1, y: 1.0)
someStudy1.moveByX(deltaX: 2.0, y: 3.0)

print(someStudy1.x)




